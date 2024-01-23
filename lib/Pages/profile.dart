import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/flutter/examples/layers/widgets/spinning_mixed.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("My Profile",
            style: TextStyle(
              color: Colors.black,
            )),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset(
              "lib/assets/images/profile.png",
              height: 120,
              width: 120,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Rock",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
            Container(
              padding: const EdgeInsets.all(40.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black12,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                    )
                  ]),
            ),
            Container(
              padding: const EdgeInsets.all(40.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black12,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Profile Information",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                    )
                  ]),
            ),
            Center(
              child: ElevatedButton(
                child: Text("Logout"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
