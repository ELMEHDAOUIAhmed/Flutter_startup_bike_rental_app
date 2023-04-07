import 'dart:async';
import 'dart:convert';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothService {
  bool isConnected = false;
  BluetoothConnection connection;

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

  Future<String> sendAndReceive(
      String message) async {
    if (!isConnected) {
      return ('BLUETOOTH NOT CONNECTED');
    }
    try {
      //send the message
      connection.output.add(utf8.encode(message));
      connection.output.allSent;

      // Wait for the response
      List<int> data = await connection.input
          .where((event) => event != null && event.isNotEmpty)
          .first
          .timeout(Duration(seconds: 40));

      String response = utf8.decode(data);
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
    }
  }
}
