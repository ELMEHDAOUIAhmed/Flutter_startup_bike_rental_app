import 'dart:async';

import 'package:flutter/material.dart';
import './BT_new.dart';

class Bluetooth extends StatefulWidget {
  const Bluetooth({Key key}) : super(key: key);

  @override
  _BluetoothState createState() => _BluetoothState();
}

class _BluetoothState extends State<Bluetooth> {

  final BluetoothService bluetoothService = BluetoothService();
  StreamSubscription<String> _subscription;
  String _message = '';
  String bluetoothStatus = 'NOT CONNECTED';
  int pin = 1234;
  String bt = 'Loading ...';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bluetooth Status'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.bluetooth, color: Colors.blue),
              SizedBox(width: 8),
              Text(bluetoothStatus),
              ElevatedButton(
                  onPressed: () {
                    bluetoothService.startScan(pin);
                  },
                  child: Text('connect')),
              ElevatedButton(
                onPressed: () async {
                  String bt_bt = await bluetoothService.send('status\n');
                  print(bt_bt);
                },
                child: Text('send status'),
              ),
              ElevatedButton(
                onPressed: () async {
                  String bt_bt = await bluetoothService.send('clear\n');
                  print(bt_bt);
                },
                child: Text('clear'),
              ),
              ElevatedButton(
                onPressed: () async {
                  String bt_bt = await bluetoothService.send('F7 6B A4 7A\n');
                  print(bt_bt);
                },
                child: Text('add uid'),
              ),
              ElevatedButton(
                  onPressed: bluetoothService.disconnect,
                  child: Text('Disconnect')),
              Text('Return code \n' + bt + '\n'),
              Text('HC-05 Response \n' + _message),
            ],
          ),
        ),
      ),
    );
  }
}
