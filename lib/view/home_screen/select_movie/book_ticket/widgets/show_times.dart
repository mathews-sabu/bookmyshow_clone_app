// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:bookmyshow_clone_app/view/home_screen/select_movie/book_ticket/widgets/book_seat.dart';
import 'package:flutter/material.dart';

class ShowTimes extends StatelessWidget {
  const ShowTimes({super.key});
  static List movieTime1 = ["11:30 AM", "02:30 PM", "06:30 PM", "09:30 PM"];
  static List movieTime2 = ["12:00 PM", "03:00 PM", "07:00 PM", "10:00 PM"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Aashirvad Cineplexx: Thodupuzha",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.info_outline),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "INFO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Text("Non-cancellable"),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 1, crossAxisCount: 3),
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookSeat(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Column(
                      children: [
                        Text(
                          movieTime1[index],
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
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border_outlined),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "SILVER HILLS 4K Laser 3D DOLBY 7.1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.info_outline),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "INFO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Text("Non-cancellable"),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 1, crossAxisCount: 3),
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Column(
                    children: [
                      Text(
                        movieTime2[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 47, 134, 50),
                            fontSize: 16),
                      ),
                      Text(
                        "4K LASER",
                        style: TextStyle(
                            color: Color.fromARGB(255, 47, 134, 50),
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
