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
    apiKey: 'AIzaSyBwiHyHIGsFrRLVkgLcoBDm4_HR-zwj728',
    appId: '1:245278290853:web:186f13f732ea633d35ee4c',
    messagingSenderId: '245278290853',
    projectId: 'login-example-78a6c',
    authDomain: 'login-example-78a6c.firebaseapp.com',
    storageBucket: 'login-example-78a6c.appspot.com',
    measurementId: 'G-6PKSERVXQ8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqq60cSetaSd_sX2wPTIwdvQUOaLIHKmo',
    appId: '1:245278290853:android:142d560980799e1135ee4c',
    messagingSenderId: '245278290853',
    projectId: 'login-example-78a6c',
    storageBucket: 'login-example-78a6c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABZIHN6zGnIh_dIBUqsb34syhLXJjHtvg',
    appId: '1:245278290853:ios:25050bc45583444935ee4c',
    messagingSenderId: '245278290853',
    projectId: 'login-example-78a6c',
    storageBucket: 'login-example-78a6c.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyABZIHN6zGnIh_dIBUqsb34syhLXJjHtvg',
    appId: '1:245278290853:ios:7eea300b9819d50135ee4c',
    messagingSenderId: '245278290853',
    projectId: 'login-example-78a6c',
    storageBucket: 'login-example-78a6c.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
