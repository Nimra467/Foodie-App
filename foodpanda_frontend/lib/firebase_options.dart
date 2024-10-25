// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyA8t__eoDclGELIsFlTONFiN3vJGdT30ys',
    appId: '1:66706777793:web:cc1653bc99b01e84b0d640',
    messagingSenderId: '66706777793',
    projectId: 'foodie-app-29a40',
    authDomain: 'foodie-app-29a40.firebaseapp.com',
    storageBucket: 'foodie-app-29a40.appspot.com',
    measurementId: 'G-4T35P0T9CR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDH-xAaCzbu1hZh4HT24-9xYPHAjaLXapQ',
    appId: '1:66706777793:android:c119029ee4fff37bb0d640',
    messagingSenderId: '66706777793',
    projectId: 'foodie-app-29a40',
    storageBucket: 'foodie-app-29a40.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAIPARLS-JsgS_D0tY8OTePq5MRo0pEslo',
    appId: '1:66706777793:ios:5c934d22ce9b1ebbb0d640',
    messagingSenderId: '66706777793',
    projectId: 'foodie-app-29a40',
    storageBucket: 'foodie-app-29a40.appspot.com',
    iosBundleId: 'com.example.foodpandaFrontend',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAIPARLS-JsgS_D0tY8OTePq5MRo0pEslo',
    appId: '1:66706777793:ios:5c934d22ce9b1ebbb0d640',
    messagingSenderId: '66706777793',
    projectId: 'foodie-app-29a40',
    storageBucket: 'foodie-app-29a40.appspot.com',
    iosBundleId: 'com.example.foodpandaFrontend',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA8t__eoDclGELIsFlTONFiN3vJGdT30ys',
    appId: '1:66706777793:web:6b10b19491323e13b0d640',
    messagingSenderId: '66706777793',
    projectId: 'foodie-app-29a40',
    authDomain: 'foodie-app-29a40.firebaseapp.com',
    storageBucket: 'foodie-app-29a40.appspot.com',
    measurementId: 'G-DCX4WWE44S',
  );
}
