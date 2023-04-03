import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:myapp/utils.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

//firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

//screen and widgets
// import 'package:myapp/providers/auth_page.dart';
// import 'screens/starting_page.dart';
// import 'screens/profile_welcome.dart';
// import 'screens/onboarding_3.dart';
// import 'screens/profile_menu.dart';
// import 'screens/signup.dart';
// import 'screens/login.dart';
//import 'screens/map_1.dart';
//import 'screens/map1_new.dart';
//import './screens/profilemenu_new.dart';
// import 'screens/message.dart';
// import 'screens/payment.dart';
// import 'screens/promotion.dart';
// import 'screens/unlock.dart';
// import 'screens/unlock_2.dart';
// import 'screens/verification.dart';
// import 'screens/onboarding.dart';
// import 'screens/onboarding_3.dart';
// import '/widgets/nav_bar.dart';
// import 'screens/promotion.dart';
// import 'tests/map_screen.dart';
// import 'tests/buttons.dart';

import 'tests/map_screen_new.dart';
import 'tests/bluetooth_screen.dart';



//Important
//at the end execute A home: AuthPage(),
//in Authpage show StartingPage(),

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Request location permission
  await Permission.location.request();
  if (await Permission.location.isDenied) {
    SystemNavigator.pop();
  }

  // Request Bluetooth permission
  await Permission.bluetooth.request();
  if (await Permission.bluetooth.isDenied) {
    SystemNavigator.pop();
  }

  // Enable location service if it is disabled
if (!await Geolocator.isLocationServiceEnabled()) {
  await Geolocator.openLocationSettings();
}

// Enable Bluetooth if it is disabled
if (!(await FlutterBluetoothSerial.instance.isEnabled)) {
  await FlutterBluetoothSerial.instance.requestEnable();
}

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bike Rental App',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Bluetooth(),
    );
  }
}
