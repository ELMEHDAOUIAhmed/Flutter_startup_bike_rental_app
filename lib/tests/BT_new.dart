import 'dart:async';
import 'dart:convert';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothService {
  bool isConnected = false;
  BluetoothConnection connection;
  StreamSubscription<List<int>> _inputSubscription;

  Future<void> connectToDevice(BluetoothDevice device, int pin) async {
    try {
      connection = await BluetoothConnection.toAddress(device.address);
      isConnected = true;
      print('Connected to ${device.name}');
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

  Future<String> sendAndReceive(String message) async {
    if (!isConnected) {
      return ('BLUETOOTH NOT CONNECTED');
    }
    try {
      // Send the message
      connection.output.add(utf8.encode(message));
      await connection.output.allSent;

      // Wait for the response
      final completer = Completer<String>();
      final buffer = StringBuffer();
      _inputSubscription ??= connection.input.listen((data) {
        buffer.write(utf8.decode(data));
        final message = buffer.toString();
        if (message.endsWith('\n')) {
          completer.complete(message.trim());
          buffer.clear();
        }
      });

      final response = await completer.future;  //.timeout(Duration(seconds: 3));
      print(response);
      return response;
    } catch (e) {
      print('Error: $e');
      return ('Error');
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

  void disconnect() {
    if (isConnected) {
      connection.finish();
      isConnected = false;
      _inputSubscription?.cancel();
      _inputSubscription = null;
    }
  }
}
