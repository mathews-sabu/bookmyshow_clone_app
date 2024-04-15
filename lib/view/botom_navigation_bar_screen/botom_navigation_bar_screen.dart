// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookmyshow_clone_app/view/events_screen/events_screen.dart';
import 'package:bookmyshow_clone_app/view/home_screen/home_screen.dart';
import 'package:bookmyshow_clone_app/view/movies_screen/movies_screen.dart';
import 'package:bookmyshow_clone_app/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  List screenList = [
    HomeScreen(),
    MoviesScreen(),
    EventsScreen(),
    ProfileScreen()
  ];
  int indexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[indexValue],
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
            onTap: (value) {
              indexValue = value;
              setState(() {});
            },
            currentIndex: indexValue,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.videocam_outlined), label: "Movies"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.stream_rounded), label: "Events"),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ]),
      ),
    );
  }
}
