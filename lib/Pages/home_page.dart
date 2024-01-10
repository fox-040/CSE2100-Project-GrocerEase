import 'package:flutter/material.dart';
/*import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:fluttertoast/fluttertoast.dart';

import '../../../../global/common/toast.dart';*/

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        const SizedBox(height: 48),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text("Good Morning."),
        ),
         SizedBox(height: 4),
        Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you",
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            )),

             SizedBox(height: 24),
            //divider
             Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 24.0),
              child: Divider(),
            ),

             SizedBox(height: 24),
            Padding(
               padding:  EdgeInsetsDirectional.symmetric(horizontal: 24.0),
              child: Text("Fresh Items",style: TextStyle(fontSize: 16),),
            ),

             
      ],
    )
    )
    );

    /*
      child: ElevatedButton(
        child: Text("Logout"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },*/
  }
}
