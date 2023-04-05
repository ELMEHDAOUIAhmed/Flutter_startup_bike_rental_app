
import 'package:flutter/material.dart';
// import './bluetooth.dart';
import './BT_new.dart';

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
                  onPressed: () {
                    bluetoothService.startScan(pin);
                  },
                  child: Text('connect')),
              ElevatedButton(
                onPressed: () async {
                  String bt_bt =
                      await bluetoothService.sendAndReceive('status\n');
                  setState(() {
                    bt = bt_bt;
                  });
                },
                child: Text('send status'),
              ),
              ElevatedButton(
                onPressed: () async {
                  String bt_bt = await bluetoothService.sendAndReceive('clear\n');
                  setState(() {
                    bt = bt_bt;
                  });
                },
                child: Text('clear'),
              ),
              ElevatedButton(
                onPressed: () async {
                  String bt_bt = await bluetoothService.sendAndReceive('191931089014\n');
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
