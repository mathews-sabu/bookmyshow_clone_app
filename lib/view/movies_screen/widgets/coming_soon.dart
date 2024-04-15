// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            width: double.infinity,
            height: 50,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Coming Soon",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Explore Upcoming Movies",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.red.withOpacity(1),
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ],
    );
  }
}
