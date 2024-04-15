// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RateSelection extends StatelessWidget {
  const RateSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(18)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              "₹0 - ₹200",
              style: TextStyle(
                  color: Colors.red, fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(18)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              "₹201 - ₹300",
              style: TextStyle(
                  color: Colors.red, fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(18)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              "₹301 - ₹400",
              style: TextStyle(
                  color: Colors.red, fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
