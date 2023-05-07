import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/route_generator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:myapp/utils.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

//screen and widgets
import 'screens/starting_page.dart';
import 'screens/profile_welcome.dart';
// import 'screens/onboarding_3.dart';
// import 'screens/profile_menu.dart';
import 'screens/signup.dart';
import 'screens/login.dart';
//import 'screens/map_1.dart';
//import 'screens/map1_new.dart';
//import '/screens/profile_menu.dart';
// import 'screens/message.dart';
import 'screens/payment_voucher.dart';
import 'screens/payment.dart';
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
import '/screens/settings.dart';
import 'tests/bluetooth_screen.dart';
import 'screens/support.dart';
import '/screens/verification.dart';
import 'screens/message.dart';
import '/providers/auth_api.dart';
import '/widgets/unlock_notification.dart';
import '/screens/profile_menu.dart';
import '/tests/camera_report.dart';
import 'screens/my_wallet.dart';
import '/screens/map_screen.dart';
import '/widgets/summary.dart';


//Important
//at the end execute A home: AuthPage(),
//in Authpage show StartingPage(),

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  // Request location permission
  await Permission.location.request();
  if (await Permission.location.isDenied) {
    SystemNavigator.pop();
  }

  // Enable location service if it is disabled
  while (!await Geolocator.isLocationServiceEnabled()) {
    await Geolocator.openLocationSettings();
    
  }

  // Request Bluetooth permission
  await Permission.bluetooth.request();
  if (await Permission.bluetooth.isDenied) {
    SystemNavigator.pop();
  }

  // Enable Bluetooth if it is disabled
  while (!(await FlutterBluetoothSerial.instance.isEnabled)) {
    await FlutterBluetoothSerial.instance.requestEnable();

  }

  LocationPermission permission = await Geolocator.checkPermission();

  // if (permission == LocationPermission.denied) {
  //   permission = await Geolocator.requestPermission();
  //   SystemNavigator.pop();
  //   }

  if (permission == LocationPermission.deniedForever) {
    // Permission permanently denied, open settings
    await Geolocator.openAppSettings();
    // Display a message asking the user to enable location
    // You can use a package like fluttertoast or snackbar for this
  }
  

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bike Rental App',
      debugShowCheckedModeBanner: false,
      //scrollBehavior: MyCustomScrollBehavior(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),

      // initialRoute: '/auth',
      // onGenerateRoute: RouteGenerator.generateRoute,


      // ***IMPORTANT REMOVE BEFORE FINAL VERSION*** //

      // ***FOR TESTING ONLY***//
      home: Summary(),
    );
  }
}
