// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookmyshow_clone_app/view/home_screen/select_movie/book_ticket/widgets/date.dart';
import 'package:bookmyshow_clone_app/view/home_screen/select_movie/book_ticket/widgets/rate_selection.dart';
import 'package:bookmyshow_clone_app/view/home_screen/select_movie/book_ticket/widgets/show_times.dart';
import 'package:bookmyshow_clone_app/view/home_screen/select_movie/select_movie.dart';
import 'package:flutter/material.dart';

class BookTicket extends StatelessWidget {
  const BookTicket({super.key});

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
                      builder: (context) => SelectMovie(),
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
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.tune,
            size: 30,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
            Date(),
            Divider(),
            Row(
              children: [
                SizedBox(width: 10),
                Text("Malayalam . 2D",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            Divider(),
            RateSelection(),
            Divider(),
            ShowTimes()
          ],
        ),
      ),
    );
  }
}
