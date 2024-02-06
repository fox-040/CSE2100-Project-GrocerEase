import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/profile.dart';
import 'package:flutter_application_1/firebase_auth_implementation/firebase_auth_services.dart';
//import 'package:flutter_application_1/flutter/examples/api/lib/material/page_transitions_theme/page_transitions_theme.0.dart';
//import 'package:flutter_application_1/flutter/packages/flutter/test/widgets/scroll_activity_test.dart';
import 'package:flutter_application_1/reusable_widget/reusable.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  String name = " ";
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Edit Profile",
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
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              height: 30,
            ),
            reusableTextField("Edit Name", Icons.person_2_rounded, false,
                TextEditingController()),
            SizedBox(
              height: 30,
            ),
            reusableTextField(
                "Edit Email", Icons.email_outlined, false, emailTextController),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.black12,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: const Text(
                        "Done",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ]),
            ),
            Container(
              child: ElevatedButton(
                child: Text("chat"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
