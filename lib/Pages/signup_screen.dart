import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/color_utilis.dart';
import 'package:flutter_application_1/firebase_auth_implementair.dart';
import 'package:flutter_application_1/reusable_widget/reusable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/toast.dart';

bool isSigningUp = false;

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController passwordTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController userNameTextController = TextEditingController();

  @override
  void dispose() {
    passwordTextController.dispose();
    emailTextController.dispose();
    userNameTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "SignUp",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("E78F08"),
            hexStringToColor("e8fbe0"),
            hexStringToColor("E78F08")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Username", Icons.person_outline, false,
                    userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email ID", Icons.person_outline, false,
                    emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    passwordTextController),
                SizedBox(
                  height: 20,
                ),
                logInsignUpButton(context, false, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                })
              ],
            ),
          ),
        ));
  }

  void _signup() async {
    String email = emailTextController.text;
    String password = passwordTextController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      showToast(message: "User is successfully signed in");
      Navigator.pushNamed(context, "/home");
    } else {
      showToast(message: "some error occured");
    }
  }
}
