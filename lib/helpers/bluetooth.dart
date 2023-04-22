import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:permission_handler/permission_handler.dart';
import './arduino.dart';
import '/providers/control_access_api.dart';

typedef AccessCallback = void Function(ArduinoMessage arduino);

class BluetoothService {
  AccessCallback onAccessCallback;
  int attempts = 0;

  void processArduinoMessage(String message) {
    var arduinoMessage = extractArduinoMessage(message);
    if (arduinoMessage != null) {
      //api call
      sendArduinoMessageToApi(arduinoMessage);
      print("Access: ${arduinoMessage.access}");
      print("UID: ${arduinoMessage.uid}");
      print("Status: ${arduinoMessage.status}");

      // Call the callback function with the access value
      if (onAccessCallback != null) {
        onAccessCallback(arduinoMessage);
      }
    } else {
      print("Invalid access message!");
    }
  }

  bool isConnected = false;
  BluetoothConnection connection;
  StreamSubscription<List<int>> _inputSubscription;
  StreamController<String> _messageController =
      StreamController<String>.broadcast();
  String _messageBuffer = '';
  String completeMessage;

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
      listenForMessages();

      //get matricule from DB

      //send it
      send('80 63 2B 32\n');

      // Listen for disconnection
      _inputSubscription?.onDone(() {
        print('Disconnected from ${device.name}');
        disconnect();
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

  String listenForMessages() {
    if (!isConnected) {
      return "BLUETOOTH NOT CONNECTED";
    }
    // ignore: prefer_conditional_assignment
    if (_inputSubscription == null) {
      // ignore: void_checks
      _inputSubscription = connection.input.listen((data) {
        String message = utf8.decode(data);
        _messageBuffer += message;
        if (_messageBuffer.contains('\n')) {
          int newlineIndex = _messageBuffer.indexOf('\n');
          completeMessage =
              _messageBuffer.substring(0, newlineIndex + 1).trim();
          _messageBuffer = _messageBuffer.substring(newlineIndex + 1);
          // ignore: avoid_print
          print('Received message: $completeMessage');
          processArduinoMessage(completeMessage);
          return completeMessage;
          // Do whatever you need to do with the complete message here
        }
      });
    }
    return "ERROR";
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
