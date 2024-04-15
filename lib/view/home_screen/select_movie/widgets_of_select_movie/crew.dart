// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Crew extends StatelessWidget {
  const Crew({super.key});
  static const List<Map<String, dynamic>> crewList = [
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/chidambaram-2015239-16-11-2021-11-22-14.jpg",
      "name": "Chidambaram",
      "name1": "Director"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/soubin-shahir-1065318-1683013079.jpg",
      "name": "Soubin Shahir",
      "name1": "Producer"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/shawn-antony-2034218-1707374863.jpg",
      "name": "Shawn Antony",
      "name1": "Producer"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/sushin-shyam-1072344-1695702230.jpg",
      "name": "SusinShyam",
      "name1": "Musician"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/babu-shahir-2034217-1707374792.jpg",
      "name": "Babu Shahir",
      "name1": "Produce"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/shyju-khalid-37751-22-03-2018-02-04-18.jpg",
      "name": "Shyju Khalid",
      "name1": "Cinimatographer"
    },
    {
      "image":
          "https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/vivek-harshan-1080540-25-12-2017-10-49-36.jpg",
      "name": "Vivek Harshan",
      "name1": "Editor"
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
            "Crew",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  crewList.length,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  NetworkImage(crewList[index]["image"]),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(crewList[index]["name"]),
                            Text(crewList[index]["name1"])
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
