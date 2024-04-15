// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookmyshow_clone_app/view/login_verification_screen/login_verification_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/app_icon.png",
              scale: 1.4,
            ),
            SizedBox(
              height: 35,
            ),
            Column(
              children: [
                Text(
                  "Please enter your mobile number or",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "email address for verification",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Enter mobile number",
                  labelStyle: TextStyle(color: Colors.black.withOpacity(.4)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(.2)),
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(height: 15),
            Text("or"),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                  labelText: "Enter email address",
                  labelStyle: TextStyle(color: Colors.black.withOpacity(.4)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(.2)),
                      borderRadius: BorderRadius.circular(15))),
            ),
            SizedBox(height: 35),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginVerificationScreen(),
                      ));
                },
                child: Container(
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                      child: Text(
                    "Send Verification Code",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                ))
          ],
        ),
      ),
    );
  }
}
