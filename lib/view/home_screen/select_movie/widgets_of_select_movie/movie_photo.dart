// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MoviePhoto extends StatelessWidget {
  const MoviePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAmg5QgGnpMhm3YC0OcaaWC-1wJjAHd8YCvg&s"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
