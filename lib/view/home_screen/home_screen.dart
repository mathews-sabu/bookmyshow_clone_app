// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookmyshow_clone_app/view/dummydb.dart';
import 'package:bookmyshow_clone_app/view/home_screen/widgets/first_selection_bar.dart';
import 'package:bookmyshow_clone_app/view/home_screen/widgets/fourth_home_tab.dart';
import 'package:bookmyshow_clone_app/view/home_screen/widgets/movie_poster.dart';
import 'package:bookmyshow_clone_app/view/home_screen/widgets/program_poster.dart';
import 'package:bookmyshow_clone_app/view/location_screen/location_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 17,
          ),
          child: Column(
            children: [
              Text(
                "It All Starts Here !",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  Text(
                    "Thodupuzha",
                    style: TextStyle(color: Colors.red),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LocationScreen(),
                          ));
                    },
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.red,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.notifications_none_outlined,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.qr_code_scanner_rounded,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FirstSelectionBar(),
            ProgramPoster(),
            SizedBox(
              height: 15,
            ),
            Text(
              " Recommended Movies",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  DummyDb.moviePoster.length,
                  (index) => MoviePoster(
                    moviePoster: DummyDb.moviePoster[index]["moviePoster"],
                    like: DummyDb.moviePoster[index]["like"],
                    rating: DummyDb.moviePoster[index]["rating"],
                    movieName: DummyDb.moviePoster[index]["movieName"],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FourthHomeTab()
          ],
        ),
      ),
    );
  }
}
