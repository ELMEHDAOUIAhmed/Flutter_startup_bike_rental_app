import 'package:http/http.dart';
import 'dart:convert';
import '/helpers/arduino.dart';

Future<void> sendArduinoMessageToApi(ArduinoMessage message) async {
  // Create a JSON object with the message data and current time.
  var data = jsonEncode({
    'uid': message.uid,
    'status': message.status,
    'time': DateTime.now().toString(),
  });

  // Send the JSON object to the API.
  var response = await post(
    Uri.parse('https://example.com/api'),
    body: data,
    headers: {'Content-Type': 'application/json'},
  );

  // Check the API response and print a message to the console.
  if (response.statusCode == 200) {
    print('Message sent to API successfully.');
  } else {
    print('Failed to send message to API. Status code: ${response.statusCode}');
  }
}


// String message = "Access granted|4E F3 33 2A|closed";
// ArduinoMessage arduinoMessage = extractArduinoMessage(message);
//await sendArduinoMessageToApi(arduinoMessage);

// if (arduinoMessage != null) {
//   print("Access: ${arduinoMessage.access}");
//   print("UID: ${arduinoMessage.uid}");
//   print("Status: ${arduinoMessage.status}");
// } else {
//   print("Invalid access message!");
// }