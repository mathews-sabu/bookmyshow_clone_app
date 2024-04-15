// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:bookmyshow_clone_app/view/home_screen/select_movie/book_ticket/widgets/seats.dart';
import 'package:bookmyshow_clone_app/view/home_screen/select_movie/select_movie.dart';
import 'package:flutter/material.dart';

class BookSeat extends StatelessWidget {
  const BookSeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 450,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Manjummel Boys",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Aashirvas Cineplexx:Thodupuzha",
                  style: TextStyle(fontSize: 13),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: Colors.grey.withOpacity(.2),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tue, 17 Mar"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.edit,
                              size: 18,
                              color: Colors.red,
                            ),
                            Text(
                              " 2 Tickets",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(border: Border.all()),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: Column(
                              children: [
                                Text(
                                  "06:30 P M",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 47, 134, 50),
                                      fontSize: 16),
                                ),
                                Text(
                                  "2K Dolby Atmos",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 47, 134, 50),
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(border: Border.all()),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: Column(
                              children: [
                                Text(
                                  "09:30 P M",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 47, 134, 50),
                                      fontSize: 16),
                                ),
                                Text(
                                  "2K Dolby Atmos",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 47, 134, 50),
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Rs.335 PLATINUM RECLINER"),
            Divider(),
            Seats(),
            Text("Rs.175 GOLD"),
            Divider(),
            Seats(),
            Seats(),
            Seats(),
            Seats(),
            Seats(),
            Text("Rs.145 SILVER"),
            Divider(),
            Seats(),
            Seats(),
            Seats(),
            Seats(),
            Seats(),
          ],
        ),
      ),
    );
  }
}
