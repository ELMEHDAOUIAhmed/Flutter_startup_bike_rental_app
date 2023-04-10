import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import '/tests/BT_new.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:permission_handler/permission_handler.dart';

// mindstorm
// add Visibility
// First show same card but show : Looking for Bluetooth devices and show connected if error show button of connect
// then when message get transfered succefully to phone and you receive from arduino success ,
//hide 1 st widget
// Show "pUT YOUR STUDENT ID CARD CLOSE TO THE LOCK"
// if status sent to open , hide widget
// all steps send http request to server time also

class Unlock extends StatefulWidget {
  @override
  State<Unlock> createState() => _UnlockState();
}

class _UnlockState extends State<Unlock> {


  final BluetoothService bluetoothService = BluetoothService();
  StreamSubscription<String> _subscription;
  String _message = '';
  String bluetoothStatus = 'NOT CONNECTED';
  int pin = 1234;
  String bt = 'Loading ...';

  // before executing check permission and enable them
  
  Future<void> _checkBluetoothStatus() async {
    String status = await bluetoothService.getStatus(pin);
    setState(() {
      bluetoothStatus = status;
    });
  }

  @override
  void initState() {
    super.initState();
    _checkBluetoothStatus();
  }

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
    bluetoothService.disconnect();
  }

  String title = '';
  bool _unlockSteps = false;
  bool _bluetoothSteps = true;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 380;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(0, 0, 0, 0.5),
      ),
      Visibility(
        visible: _unlockSteps,
        child: Positioned(
          left: 0,
          right: 0,
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
                    left: 64 * fem,
                    top: 35 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 252 * fem,
                        height: 103 * fem,
                        child: Text(
                          'Put your Student\n Id Card\nclose to the lock',
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
          left: 0,
          right: 0,
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
                    left: 64 * fem,
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
                            color: Color(0xfff7f0f0),
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
                    left: 130 * fem,
                    top: 190 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 120 * fem,
                        height: 40 * fem,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, // background color
                          ),
                          onPressed: () {
                            bluetoothService.startScan(pin);
                          },
                          child: const Text('Retry!',
                              style: TextStyle(color: Colors.black)),
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
    ]);
  }
}
