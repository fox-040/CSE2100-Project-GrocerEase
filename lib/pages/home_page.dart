import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to GrocerEase"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
