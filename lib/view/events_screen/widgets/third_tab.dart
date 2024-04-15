// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab(
      {super.key,
      required this.image,
      required this.date,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.rate});
  final String image;
  final String date;
  final String text1;
  final String text2;
  final String text3;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover),
              ),
              height: 170,
              width: 140,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(date),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text1,
              style: TextStyle(color: Colors.white),
            ),
            Text(text2,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(color: Colors.white)),
            Text(text3, style: TextStyle(color: Colors.white)),
            Text(rate, style: TextStyle(color: Colors.white))
          ],
        ),
      ),
    );
  }
}
