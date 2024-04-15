// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:bookmyshow_clone_app/view/botom_navigation_bar_screen/botom_navigation_bar_screen.dart';
import 'package:bookmyshow_clone_app/view/home_screen/select_movie/book_ticket/book_ticket.dart';

import 'package:bookmyshow_clone_app/view/home_screen/select_movie/widgets_of_select_movie/cast.dart';
import 'package:bookmyshow_clone_app/view/home_screen/select_movie/widgets_of_select_movie/crew.dart';
import 'package:bookmyshow_clone_app/view/home_screen/select_movie/widgets_of_select_movie/movie_description.dart';
import 'package:bookmyshow_clone_app/view/home_screen/select_movie/widgets_of_select_movie/movie_photo.dart';
import 'package:bookmyshow_clone_app/view/home_screen/select_movie/widgets_of_select_movie/rating_tab.dart';
import 'package:flutter/material.dart';

class SelectMovie extends StatelessWidget {
  const SelectMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 250,
        leading: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigationBarScreen(),
                    ));
              },
              child: Icon(
                Icons.chevron_left_outlined,
                size: 35,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Manjummel Boys",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.share_outlined,
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              MoviePhoto(),
              RatingTab(),
              MovieDiscription(),
              Cast(),
              Divider(),
              Crew(),
              Divider(),
              BottomAppBar(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookTicket(),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red),
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        "Book Tickets",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
