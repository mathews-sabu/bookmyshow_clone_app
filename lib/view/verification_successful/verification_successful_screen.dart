// ignore_for_file: prefer_const_constructors

import 'package:bookmyshow_clone_app/view/botom_navigation_bar_screen/botom_navigation_bar_screen.dart';

import 'package:flutter/material.dart';

class VerificationSucessfulScreen extends StatefulWidget {
  const VerificationSucessfulScreen({super.key});

  @override
  State<VerificationSucessfulScreen> createState() =>
      _VerificationSucessfulScreenState();
}

class _VerificationSucessfulScreenState
    extends State<VerificationSucessfulScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) => {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavigationBarScreen(),
              ))
        });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/verification_successful_icon.png"),
          SizedBox(
            height: 35,
          ),
          Text("Verification Successful")
        ],
      ),
    );
  }
}
