// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Cast extends StatelessWidget {
  const Cast({super.key});
  static const List<Map<String, dynamic>> castList = [
    {
      "image":
          "https://in.bmscdn.com/iedb/artist/images/website/poster/large/soubin-shahir-1065318-1683013079.jpg",
      "name": "Soubin Shahir",
      "name1": "as Siju David"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/sreenath-bhasi-33734-1677574018.jpg",
      "name": "Sreenath Bhasi",
      "name1": "as Subash"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/balu-varghese-1048888-25-04-2018-01-51-22.jpg",
      "name": "Balu Varghese",
      "name1": "as Sixen Jhon"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/ganapathy-704-13-11-2018-12-58-52.jpg",
      "name": "Ganapathy",
      "name1": "as Krishnakumar"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/deepak-parambol-1047664-09-11-2016-06-12-40.jpg",
      "name": "Deepak Parambol",
      "name1": "as Sudheesh"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/abhiram-radhakrishnan-2020756-1658318696.jpg",
      "name": "Abhiram",
      "name1": "as Anil"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/jean-paul-lal-37441-24-03-2017-17-45-28.jpg",
      "name": "Jean Paul",
      "name1": "as Siju Jhon"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/khalid-rahman-1071349-04-06-2019-11-30-08.jpg",
      "name": "Khalid Rahman",
      "name1": "as Prasad"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Cast",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  castList.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  NetworkImage(castList[index]["image"]),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(castList[index]["name"]),
                            Text(castList[index]["name1"])
                          ],
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
