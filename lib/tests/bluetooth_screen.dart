import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import './bluetooth.dart';

class Bluetooth extends StatefulWidget {
  const Bluetooth({Key key}) : super(key: key);

  @override
  _BluetoothState createState() => _BluetoothState();
}

class _BluetoothState extends State<Bluetooth> {
  final BluetoothService bluetoothService = BluetoothService();
  String bluetoothStatus = 'NOT CONNECTED';
  int pin = 1234;
  String bt = 'Loading ...';

  @override
  void initState() {
    super.initState();
    _checkBluetoothStatus();
  }

  Future<void> _checkBluetoothStatus() async {
    String status = await bluetoothService.getStatus(pin);
    setState(() {
      bluetoothStatus = status;
    });
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
                  onPressed: () async {
                    await bluetoothService.startScan(1234);
                  },
                  child: Text('Connect')),
              ElevatedButton(
                onPressed: () async {
                  String bt_bt =
                      await bluetoothService.sendAndReceive('status');
                  setState(() {
                    bt = bt_bt;
                  });
                },
                child: Text('Send status'),
              ),
              ElevatedButton(
                onPressed: () async {
                  String bt_bt = await bluetoothService.sendAndReceive('clear');
                  setState(() {
                    bt = bt_bt;
                  });
                },
                child: Text('Clear'),
              ),
              ElevatedButton(
                onPressed: () async {
                  String bt_bt = await bluetoothService.sendAndReceive('1234');
                  setState(() {
                    bt = bt_bt;
                  });
                },
                child: Text('add uid'),
              ),
              ElevatedButton(
                  onPressed: bluetoothService.disconnect,
                  child: Text('Disconnect')),
              Text(bt),
            ],
          ),
        ),
      ),
    );
  }
}
