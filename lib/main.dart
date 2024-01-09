import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/login_page.dart';

import 'package:firebase_core/firebase_core.dart';

import 'dart:io';

import 'package:flutter_application_1/Pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyCqq60cSetaSd_sX2wPTIwdvQUOaLIHKmo",
              appId: "1:245278290853:android:142d560980799e1135ee4c",
              messagingSenderId: "245278290853",
              projectId: "login-example-78a6c"),
        )
      : await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.light,
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
    routes: {
      "/": (context) => const SplashScreen(),
      "/home": (context) => const HomePage(),
    },
  ));
}
