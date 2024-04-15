// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ProgramPoster extends StatefulWidget {
  const ProgramPoster({super.key});

  @override
  State<ProgramPoster> createState() => _ProgramPosterState();
}

class _ProgramPosterState extends State<ProgramPoster> {
  List programPosterList = [
    "assets/images/p2.jpeg",
    "assets/images/p1.jpeg",
    "assets/images/p3.jpeg",
    "assets/images/p4.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            itemCount: programPosterList.length,
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        programPosterList[index],
                      ),
                      fit: BoxFit.fill)),
            ),
          ),
        )
      ]),
    );
  }
}
