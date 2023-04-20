import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import '/tests/BT_new.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import '/tests/map_screen_new.dart';
import '/components/my_button.dart';
import '/helpers/arduino.dart';
import '/tests/map_screen_new.dart';
import '/models/db.dart';

//add wait before you close Connected to HC-05

class Unlock extends StatefulWidget {
  @override
  State<Unlock> createState() => _UnlockState();
}

class _UnlockState extends State<Unlock> {


  int _attempts = 0;
  String unlock = 'Put your Student\n Id Card\nclose to the lock';
  int _trackUseropens = 0;
  // variable to track user
  // must not exceed 2 for access granted , when he opens and closes the lock

  void endRideAPI() {
    //try to reconnect through bluetooth , in case we lost connection
    //startScanning(pin);
    //send status msg to bluetooth , handle msg and its need to be  "open"

    //show use how to close meaning  _blackscreen=true ; _unlockSteps=true;

    //send status msg to bluetooth , handle msg and its need to be  "close"

    //give final price , stop track , and hide nav_bar and show ride

    if (_ride_stats) {
      stopTimer();
      Duration elapsedTime = _stopwatch.elapsed;
      print(elapsedTime);
      DateTime now = DateTime.now();
      print(now);
      // Do something with elapsedTime and now
      _stopwatch.reset();
    }
  }

  Stopwatch _stopwatch = Stopwatch();

  void startTimerDuration() {
    _stopwatch.start();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  void stopTimer() {
    _timer.cancel();
    _stopwatch.stop();
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String hours = twoDigits(duration.inHours);
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$hours:$minutes:$seconds";
  }

  final BluetoothService bluetoothService = BluetoothService();
  StreamSubscription<String> _subscription;
  String _message = '';
  String bluetoothStatus = 'NOT CONNECTED';
  int pin = 1234;
  String bt = 'Loading ...';

  void _sendMatricule() async{
    String matricule = await getMatricule();
    bluetoothService.send(matricule);
  }

  void _clear() async{
    bluetoothService.send('clear');
  }

  void _status() async {
    bluetoothService.send('status');
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
    Timer.periodic(Duration(seconds: 10), (timer) {
       _checkBluetoothStatus();
      bluetoothService.startScan(pin);
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
          _ride_stats = true;
          startTimerDuration();
        });
      }
      if (arduino.access == 'Access denied') {
        ++_attempts;
        if (_attempts ==2) {
          print('Error Use your own student id card!');
          setState(() {
            unlock = 'Access denied!\nuse your Student\n Id Card';
          });
        }
        if (_attempts > 2) {
          setState(() {
            unlock = 'Put your Student\n Id Card\nclose to the lock';
            _attempts=0;
          });  
        }
      }
      if (arduino.access == null) {
        if (arduino.status == 'closed') {
          print('Lock has been opened');
        }
        if (arduino.status == 'opened') {
          print('Lock has been opened');
        }
      }
    };
  }

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
    bluetoothService.disconnect();
    _timer?.cancel();
  }

  String title = '';
  bool _bluetoothSteps = true; // true
  bool _unlockSteps = false; // false
  bool _ride_stats = false; // false
  bool _blackscreen = true; // true // hide it when we start ride false

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

  // void hideDistance(){
  //   MapScreenNew().distance_window=false;
  // }

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
          // width: double.infinity,
          // height: double.infinity,
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
                          'Looking for Bike Bluetooth \nStatus:\n\n' +
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
                          'Retrying in\n' + _countdown.toString(),
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
                  onTap: endRideAPI,
                  text: 'End Ride!',
                )),
          ],
        ),
      ),
    ]);
  }
}
