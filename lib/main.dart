import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/login_page.dart'; // Import Firebase Auth

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //int days = 30;
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
