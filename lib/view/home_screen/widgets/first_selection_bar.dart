// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstSelectionBar extends StatelessWidget {
  const FirstSelectionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(children: [
            Column(
              children: [
                Icon(
                  Icons.radio,
                  size: 25,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Movies",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            SizedBox(
              width: 22,
            ),
            Column(
              children: [
                Icon(
                  Icons.sports_handball_sharp,
                  size: 25,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Sports",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            SizedBox(
              width: 22,
            ),
            Column(
              children: [
                Icon(
                  Icons.video_collection_outlined,
                  size: 25,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Stream",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            SizedBox(
              width: 22,
            ),
            Column(
              children: [
                Icon(
                  Icons.nightlife_rounded,
                  size: 25,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Music",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              width: 22,
            ),
            Column(
              children: [
                Icon(
                  Icons.crib,
                  size: 25,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Amusement",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              width: 22,
            ),
            Column(
              children: [
                Icon(
                  Icons.attractions,
                  size: 25,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Tourist",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              width: 22,
            ),
            Column(
              children: [
                Icon(
                  Icons.more_outlined,
                  size: 25,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "See All",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
