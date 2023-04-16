class ArduinoMessage {
  String uid;
  String status;
  String access;

  ArduinoMessage({this.uid, this.status, this.access});
}

ArduinoMessage extractArduinoMessage(String message) {
  List<String> parts = message.split("|");

  if (parts.isEmpty) {
    // Invalid access message.
    return null;
  }

  String access = parts[0];
  String uid;
  String status;

  if (access == "Access granted") {
    uid = parts[1];
    status = parts[2];
    return ArduinoMessage(uid: uid, status: status, access: access);

  }
   if (access == "Access denied") {
    uid = parts[1];
    status=null;
    return ArduinoMessage(uid: uid, status: status, access: access);
  }
  if (access == "Added") {
    // One part message.
    access = null;
    status = parts[0];
    uid = parts[1];
  } else {
    // One part message.
    access = null;
    status = parts[0];
    uid = null;
  }

  return ArduinoMessage(uid: uid, status: status, access: access);
}




//calls
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
