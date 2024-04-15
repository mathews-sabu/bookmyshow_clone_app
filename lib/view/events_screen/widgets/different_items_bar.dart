// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class DifferentItemsBar extends StatelessWidget {
  const DifferentItemsBar({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
  });
  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 2),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
              height: 75,
              width: 75,
            ),
          ),
          Text(
            text1,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(
            text2,
            style: TextStyle(fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
