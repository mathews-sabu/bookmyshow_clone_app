// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({super.key});
  static List dateList = [
    {"day": "SUN", "date": "17", "month": "MARCH"},
    {"day": "MON", "date": "18", "month": "MARCH"},
    {"day": "TUE", "date": "19", "month": "MARCH"},
    {"day": "WED", "date": "20", "month": "MARCH"},
    {"day": "THU", "date": "21", "month": "MARCH"},
    {"day": "FRI", "date": "22", "month": "MARCH"},
    {"day": "SAT", "date": "23", "month": "MARCH"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            dateList.length,
            (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        dateList[index]["day"],
                      ),
                      Text(
                        dateList[index]["date"],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        dateList[index]["month"],
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
