// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyATsnMFzCNKdLgihiRKVh8vbh6UvJDgVGU',
    appId: '1:217855495200:web:fcd1844bf81395c46e8045',
    messagingSenderId: '217855495200',
    projectId: 'bikerental-f58aa',
    authDomain: 'bikerental-f58aa.firebaseapp.com',
    databaseURL: 'https://bikerental-f58aa-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'bikerental-f58aa.appspot.com',
    measurementId: 'G-RH0DN8LYE0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBR021Rb5C823DKjKvOBKT2qBwyYlafg40',
    appId: '1:217855495200:android:198ada08cbf1ef8d6e8045',
    messagingSenderId: '217855495200',
    projectId: 'bikerental-f58aa',
    databaseURL: 'https://bikerental-f58aa-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'bikerental-f58aa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCGXO0xBGsNcvrud2pdk3wdQ5jmysHAwR0',
    appId: '1:217855495200:ios:508a98702898ff3c6e8045',
    messagingSenderId: '217855495200',
    projectId: 'bikerental-f58aa',
    databaseURL: 'https://bikerental-f58aa-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'bikerental-f58aa.appspot.com',
    iosClientId: '217855495200-71t1idkv1kirk7c80f0e11b0qvjv6jhs.apps.googleusercontent.com',
    iosBundleId: 'com.example.test',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCGXO0xBGsNcvrud2pdk3wdQ5jmysHAwR0',
    appId: '1:217855495200:ios:508a98702898ff3c6e8045',
    messagingSenderId: '217855495200',
    projectId: 'bikerental-f58aa',
    databaseURL: 'https://bikerental-f58aa-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'bikerental-f58aa.appspot.com',
    iosClientId: '217855495200-71t1idkv1kirk7c80f0e11b0qvjv6jhs.apps.googleusercontent.com',
    iosBundleId: 'com.example.test',
  );
}