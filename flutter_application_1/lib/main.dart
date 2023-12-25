import 'package:flutter/material.dart';
//import 'package:flutter_application_1/pages/login_page.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/image/login_image.png'))),
          ),
          //)
        ],
      ),
    );
  }
}
