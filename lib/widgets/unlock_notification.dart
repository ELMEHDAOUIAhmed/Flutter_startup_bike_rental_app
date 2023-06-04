import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import '/helpers/bluetooth.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import '/components/my_button.dart';
import '/helpers/arduino.dart';
import '/models/db.dart';
import '/helpers/globals.dart' as globals;
import '/helpers/station.dart';

//you have switched between closed and open status becarful ,
//place lock and test

class Unlock extends StatefulWidget {
  @override
  State<Unlock> createState() => _UnlockState();
}

class _UnlockState extends State<Unlock> {
  String token;
  double newSolde = 0.0;
  double totalPrice = 0.0;
  //Duration elapsedTime;
  Timer bt_reconnect_timer;

  int _attempts = 0;
  String unlock = 'Put your Student\n Id Card\nclose to the lock';

  bool _lockStatusOpen = false;
  bool _lockCleared = false;
  String userCurrentStation = '';

  void function() {
    Navigator.pushNamedAndRemoveUntil(context, '/auth', (route) => false);
  }

  void _confirmCancelRide() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          title: Row(
            children: const [
              Icon(Icons.notification_important, color: Colors.yellow),
              SizedBox(width: 8.0),
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                    'Alert!\nAre you sure you want to stop your Ride ?.',
                    style: TextStyle(fontSize: 16.0)),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                //No
              },
              child: Text("NO"),
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await Future.delayed(Duration(milliseconds: 500));
                endRideAPI();
                //Yes
              },
              child: Text("YES"),
            ),
          ],
        );
      },
    );
  }

  void verifyLockStatus() async {
    _status(); //check if lock is closed
    await Future.delayed(const Duration(milliseconds: 500));
    if (_lockStatusOpen) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ),
            title: Row(
              children: const [
                //Icon(Icons.error, color: Colors.red),
                Icon(Icons.check_circle, color: Colors.yellow),
                SizedBox(width: 8.0),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text('Alert !\n\n Please Close your Bike \'s Lock! \n',
                      style: TextStyle(fontSize: 16.0)),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Continue"),
              ),
            ],
          );
        },
      ).then((value) {
        // Wait for dialog to close before returning
        setState(() {
          //_unlockSteps = false;
          _ride_stats = true;
          _blackscreen = false;
        });
      });
    } else {
      finishRide();
    }
  }

  void finishRide() async {
    _clear();
    await Future.delayed(const Duration(milliseconds: 500));

    try {
      token = await getToken();
      await returnBike(token, globals.stationIdDest);

      setState(() {
        globals.total_ride_time = _stopwatch.elapsed;
        _blackscreen = false;
        _ride_stats = false;
      });
      //then show stats

      _stopTimer();
      bluetoothService.disconnect();
      if (_timer != null) {
        _timer.cancel();
      }
      if (bt_reconnect_timer != null) {
        bt_reconnect_timer.cancel();
      }
      globals.reserved = false;

      //after navigate to summary

      Navigator.pushNamedAndRemoveUntil(context, '/summary', (route) => false);
      //Navigator.pushNamed(context, '/summary');
    } catch (e) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ),
            title: Row(
              children: const [
                //Icon(Icons.error, color: Colors.red),
                Icon(Icons.check_circle, color: Color.fromARGB(255, 255, 0, 0)),
                SizedBox(width: 8.0),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text('Server Busy! \nTry Again!',
                      style: TextStyle(fontSize: 16.0)),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Continue"),
              ),
            ],
          );
        },
      );
    }
  }

  //Future<void> endRideAPI() {

  void endRideAPI() async {
    // check if its on of our station first ;
    //then execute this
    if (globals.stationIdDest != null) {
      setState(() {
        //_unlockSteps = true;
        _ride_stats = false;
        _blackscreen = true;
      });

      _status(); //check if lock is open
      await Future.delayed(const Duration(milliseconds: 500));

      if (!_lockStatusOpen) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(48),
              ),
              title: Row(
                children: const [
                  //Icon(Icons.error, color: Colors.red),
                  Icon(Icons.check_circle, color: Colors.yellow),
                  SizedBox(width: 8.0),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                        'Alert !\n\n Please Open your Bike \'s Lock! \n',
                        style: TextStyle(fontSize: 16.0)),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Continue"),
                ),
              ],
            );
          },
        ).then((value) {
          // Wait for dialog to close before returning
          setState(() {
            //_unlockSteps = false;
            _ride_stats = true;
            _blackscreen = false;
          });
        });
        return;
      }

      _status(); //check if lock is open
      await Future.delayed(const Duration(milliseconds: 500));

      if (_lockStatusOpen) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(48),
              ),
              title: Row(
                children: const [
                  //Icon(Icons.error, color: Colors.red),
                  Icon(Icons.check_circle, color: Colors.yellow),
                  SizedBox(width: 8.0),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                        'Close Lock Now!\n\n Please Put your Bike back into our Station.\nClose the Lock \nBefore Clicking Continue! \n',
                        style: TextStyle(fontSize: 16.0)),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Continue"),
                ),
              ],
            );
          },
        ).then((value) async {
          // Wait for dialog to close before returning
          verifyLockStatus();
        });
      }

      //_stopwatch.reset();
    } else {
      //show dialogue
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ),
            title: Row(
              children: const [
                //Icon(Icons.error, color: Colors.red),
                Icon(Icons.check_circle, color: Colors.yellow),
                SizedBox(width: 8.0),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                      'You cannot leave Bike here !\n\n Please Take the Bike in any of our Stations! \n',
                      style: TextStyle(fontSize: 16.0)),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Continue"),
              ),
            ],
          );
        },
      );
    }
  }

  Stopwatch _stopwatch = Stopwatch();

  void startTimerDuration() {
    _stopwatch.start();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String hours = twoDigits(duration.inHours);
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "${hours}h:${minutes}m:${seconds}s";
  }

  final BluetoothService bluetoothService = BluetoothService();

  StreamSubscription<String> _subscription;
  String _message = '';
  String bluetoothStatus = 'NOT CONNECTED';
  int pin = 1234;
  String bt = 'Loading ...';

  void _sendMatricule() async {
    String matricule = await getMatricule();
    await bluetoothService.send(matricule);
  }

  void _clear() async {
    await bluetoothService.send('clear\n');
  }

  void _status() async {
    await bluetoothService.send('status\n');
  }

  // before executing check permission and enable them

  Future<void> _checkBluetoothStatus() async {
    // Enable Bluetooth if it is disabled
    if (!(await FlutterBluetoothSerial.instance.isEnabled)) {
      await FlutterBluetoothSerial.instance.requestEnable();
    }

    String status = await bluetoothService.getStatus(pin);
    setState(() {
      bluetoothStatus = status;
    });
  }

  void startScanning(int pin) {
    bt_reconnect_timer = Timer.periodic(Duration(seconds: 10), (timer) {
      _checkBluetoothStatus();
      bluetoothService.startScan(pin);
      if (!globals.isConnectedtoBT) {
        setState(() {
          _bluetoothSteps = true;
          _unlockSteps = false;
        });
        _startTimer();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _checkBluetoothStatus();
    startScanning(pin);
    _startTimer();

    // Set the onAccessCallback to update the state when an access message is received
    bluetoothService.onAccessCallback = (ArduinoMessage arduino) {
      if (arduino.access == 'Access granted') {
        setState(() {
          _blackscreen = false;
          _unlockSteps = false;
          globals.globalIndex = 0;
          _ride_stats = true;
          startTimerDuration();
        });
        //send api to server  takeBike(token)
        //token
      }
      if (arduino.access == 'Access denied') {
        ++_attempts;
        if (_attempts == 2) {
          print('Error Use your own student id card!');
          setState(() {
            unlock = 'Access denied!\nuse your Student\n Id Card';
          });
        }
        if (_attempts > 2) {
          setState(() {
            unlock = 'Put your Student\n Id Card\nclose to the lock';
            _attempts = 0;
          });
        }
      }
      // if (arduino.access == null) {
      if (arduino.status == 'closed') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(48),
              ),
              title: Row(
                children: const [
                  //Icon(Icons.error, color: Colors.red),
                  Icon(Icons.check_circle, color: Colors.yellow),
                  SizedBox(width: 8.0),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text('Lock Closed! \n',
                        style: TextStyle(fontSize: 16.0)),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Continue"),
                ),
              ],
            );
          },
        );
        print('Lock has been closed');
        setState(() {
          _lockStatusOpen = false;
        });
      }
      if (arduino.status == 'opened') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(48),
              ),
              title: Row(
                children: const [
                  //Icon(Icons.error, color: Colors.red),
                  Icon(Icons.check_circle, color: Colors.yellow),
                  SizedBox(width: 8.0),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text('Lock opened! \nEnjoy your Ride :)',
                        style: TextStyle(fontSize: 16.0)),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Continue"),
                ),
              ],
            );
          },
        );
        print('Lock has been opened');
        setState(() {
          _lockStatusOpen = true;
        });
      }
      if (arduino.status == 'Added') {
        print('matricule has been added');
      }
      if (arduino.status == 'cleared') {
        print('matricule has been Cleared');
        setState(() {
          _lockCleared = true;
        });
        //send api to server returnBike(token,stationId)
      }
      //}
    };
  }

  String title = '';
  bool _bluetoothSteps = true; // true
  bool _unlockSteps = false; // false
  bool _ride_stats = false; // false
  bool _blackscreen = true; // true
  bool _summary = false; //false

  int _countdown = 10;
  Timer _timer;

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown > 0) {
          _countdown--;
        } else {
          _countdown = 10;
        }
      });
      if (bluetoothStatus == 'Connected to HC-05') {
        timer.cancel();
        _bluetoothSteps = false;
        _unlockSteps = true;
      }
    });
  }

  void _stopTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
    _stopwatch.stop();
  }

  @override
  void dispose() {
    super.dispose();
    bluetoothService.disconnect();
    _stopTimer();
  }

  @override
  Widget build(BuildContext context) {
    Duration duration = _stopwatch.elapsed;
    double baseWidth = 380;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Stack(children: [
      Visibility(
        visible: _blackscreen,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(0, 0, 0, 0.5),
        ),
      ),
      Visibility(
        visible: _unlockSteps,
        child: Positioned(
          left: 20,
          right: 20,
          bottom: 240 * ffem,
          child: SizedBox(
            child: Container(
              width: double.infinity,
              height: 400 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48 * fem),
                gradient: const LinearGradient(
                  begin: Alignment(0.217, 1),
                  end: Alignment(0.2, -1),
                  colors: <Color>[Color(0xff009efd), Color(0xff000000)],
                  stops: <double>[0, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x33000000),
                    offset: Offset(0 * fem, 2 * fem),
                    blurRadius: 16 * fem,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    // haibikesdurofullse7SV (7:377)
                    left: 45 * fem,
                    top: 35 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 252 * fem,
                        height: 103 * fem,
                        child: Text(
                          unlock,
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xfff7f0f0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // image32wAd (7:379)
                    left: 10 * fem,
                    top: 120 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 250 * fem,
                        height: 250 * fem,
                        child: Image.asset(
                          'assets/page-1/images/student_id.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // image33dJM (7:387)
                    left: 240 * fem,
                    top: 240 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 89 * fem,
                        height: 124 * fem,
                        child: Image.asset(
                          'assets/page-1/images/nfc_unlocked.png',
                          //'assets/page-1/images/nfc_locked.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Visibility(
        visible: _bluetoothSteps,
        child: Positioned(
          left: 20,
          right: 20,
          bottom: 315 * ffem,
          child: SizedBox(
            child: Container(
              width: double.infinity,
              height: 250 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48 * fem),
                gradient: const LinearGradient(
                  begin: Alignment(0.217, 1),
                  end: Alignment(0.2, -1),
                  colors: <Color>[Color(0xff009efd), Color(0xff000000)],
                  stops: <double>[0, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x33000000),
                    offset: Offset(0 * fem, 2 * fem),
                    blurRadius: 16 * fem,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    // haibikesdurofullse7SV (7:377)
                    left: 45 * fem,
                    top: 35 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 252 * fem,
                        height: 135 * fem,
                        child: Text(
                          // ignore: prefer_interpolation_to_compose_strings
                          'Looking for Bike:${globals.velo} Bluetooth \nStatus:\n\n' +
                              bluetoothStatus,
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffem / fem,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // image32wAd (7:379)
                    left: 30 * fem,
                    top: 50 * fem,
                    child: const Align(
                      child:
                          Icon(Icons.bluetooth, size: 50, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    // image33dJM (7:387)
                    left: 97 * fem,
                    top: 190 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 150 * fem,
                        height: 120 * fem,
                        child: Text(
                          'Retrying in\n$_countdown',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2189999989 * ffem / fem,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Visibility(
        visible: _ride_stats,
        child: Stack(
          children: [
            Positioned(
              left: 30 * fem,
              top: 520 * fem,
              right: 30 * fem,
              bottom: 155 * fem,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 23, horizontal: 0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Duration\n',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2189999989 * ffem / fem,
                          color: Color(0xff000000),
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text: formatDuration(duration),
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2189999989 * ffem / fem,
                          color: Color(0xff000000),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0 * fem,
              top: 540 * fem,
              right: 230 * fem,
              bottom: 155 * fem,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'per 30min\n',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2189999989 * ffem / fem,
                        color: Color(0xff000000),
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: '\$0.50',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 17 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2189999989 * ffem / fem,
                        color: Color(0xff000000),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                left: 100 * fem,
                top: 590 * fem,
                right: 100 * fem,
                bottom: 160 * fem,
                child: MyButton(
                  onTap: _confirmCancelRide,
                  text: 'End Ride!',
                )),
          ],
        ),
      ),
    ]);
  }
}
