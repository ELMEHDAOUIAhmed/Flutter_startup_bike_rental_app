import 'dart:async';
import 'dart:convert';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:permission_handler/permission_handler.dart';

class BluetoothService {
  bool isConnected = false;
  BluetoothConnection connection;
  StreamSubscription<List<int>> _inputSubscription;
  StreamController<String> _messageController =
      StreamController<String>.broadcast();

  String _receivedMessage = '';
  
  Future<bool> _checkPermission() async {
    // Request Bluetooth permission
    await Permission.bluetooth.request();
    if (await Permission.bluetooth.isDenied) {
      return false;
    }
    return true;
  }

  Future<void> _enablePermission() async {
    // Enable Bluetooth if it is disabled
    if (!(await FlutterBluetoothSerial.instance.isEnabled)) {
      await FlutterBluetoothSerial.instance.requestEnable();
    }
  }

  Future<void> connectToDevice(BluetoothDevice device, int pin) async {
    try {
      connection = await BluetoothConnection.toAddress(device.address);
      isConnected = true;
      print('Connected to ${device.name}');
      listenForMessages().listen((message) {
        print('Received message: $message');
        // Do whatever you need to do with the message here
      });
    } catch (e) {
      print('Error connecting to ${device.name}: ${e.toString()}');
    }
  }

  Future<void> startScan(int pin) async {
    try {
      if (!isConnected) {
        var devices = await FlutterBluetoothSerial.instance.getBondedDevices();
        for (BluetoothDevice device in devices) {
          if (device.name == "HC-05") {
            await connectToDevice(device, pin);
          }
        }
      }
    } catch (e) {
      print('Error scanning for devices: ${e.toString()}');
    }
  }




  Future<String> send(String message) async {
    if (!isConnected) {
      return ('BLUETOOTH NOT CONNECTED');
    }
    try {
      // Send the message
      connection.output.add(utf8.encode(message));
      await connection.output.allSent;
      return 'Message sent: $message';
    } catch (e) {
      print('Error sending message: $e');
      return ('Error sending message');
    }
  }

  Future<String> getStatus(int pin) async {
    try {
      await startScan(pin);
      if (isConnected) {
        return "Connected to HC-05";
      } else {
        return "BLUETOOTH NOT CONNECTED";
      }
    } catch (e) {
      print(e.toString());
      return "ERROR";
    }
  }

  Stream<String> listenForMessages() {
    if (!isConnected) {
      return Stream.empty();
    }
    // ignore: prefer_conditional_assignment
    if (_inputSubscription == null) {
      _inputSubscription = connection.input.listen((data) {
        String message = utf8.decode(data).trim();
        _messageController.add(message);
      });
    }
    return _messageController.stream;
  }

  void disconnect() {
    if (isConnected) {
      connection.finish();
      isConnected = false;
      _inputSubscription?.cancel();
      _inputSubscription = null;
      _messageController.close();
    }
  }
}
