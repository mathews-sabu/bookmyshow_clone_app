// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:bookmyshow_clone_app/view/verification_successful/verification_successful_screen.dart';

import 'package:flutter/material.dart';

class LoginVerificationScreen extends StatelessWidget {
  const LoginVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/app_icon.png",
                scale: 1.4,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Please enter verification code"),
              SizedBox(
                height: 40,
              ),
              Row(
                children: List.generate(
                    5,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(),
                            ),
                            height: 70,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.black.withOpacity(.3))),
                          ),
                        )),
              ),
              SizedBox(
                height: 25,
              ),
              Text("Resend verification code in 45 seconds"),
              SizedBox(
                height: 25,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerificationSucessfulScreen(),
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
                      "Verify",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
