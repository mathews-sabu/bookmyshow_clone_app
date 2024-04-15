// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:bookmyshow_clone_app/view/botom_navigation_bar_screen/botom_navigation_bar_screen.dart';

import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  List locations = [
    "Banglore",
    "Pune",
    "Ernakulam",
    "Delhi",
    "Kolkata",
    "Chennai",
    "Hyderabad",
    "Mumbai",
    "Thodupuzha",
    "Kochi",
    "Kottayam",
    "Madras"
  ];
  List locationIcons = [
    Icon(Icons.location_city_outlined),
    Icon(Icons.castle_outlined),
    Icon(Icons.fort_outlined),
    Icon(Icons.location_city_rounded),
    Icon(Icons.location_city_rounded),
    Icon(Icons.fort_outlined),
    Icon(Icons.castle_outlined),
    Icon(Icons.location_city_outlined),
    Icon(Icons.location_city_outlined),
    Icon(Icons.castle_outlined),
    Icon(Icons.fort_outlined),
    Icon(Icons.location_city_rounded),
    Icon(Icons.location_city_rounded),
    Icon(Icons.fort_outlined),
    Icon(Icons.castle_outlined),
    Icon(Icons.location_city_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigationBarScreen(),
                      ));
                },
                child: Icon(Icons.arrow_back_ios)),
            SizedBox(
              width: 10,
            ),
            Text(
              "Thodupuzha",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.black.withOpacity(.2)),
                    bottom: BorderSide(color: Colors.black.withOpacity(.2)))),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.search, color: Colors.black.withOpacity(.4)),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Search for your city",
                    style: TextStyle(
                        fontSize: 17, color: Colors.black.withOpacity(.5)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Row(
              children: [
                Icon(
                  Icons.my_location,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Auto Detect My Location",
                  style: TextStyle(fontSize: 16, color: Colors.red),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: 400,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "POPULAR CITIES",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )),
            decoration: BoxDecoration(color: Colors.grey.withOpacity(.2)),
          ),
          SizedBox(
            height: 250,
            child: GridView.builder(
              itemCount: 12,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index) => Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  child: Column(
                    children: [
                      locationIcons[index],
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        locations[index],
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: .6, color: Colors.black.withOpacity(.3))),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 400,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "OTHER CITIES",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )),
            decoration: BoxDecoration(color: Colors.grey.withOpacity(.2)),
          ),
          /*  Container(
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
              itemBuilder: (context, index) => Container(
                child: Text(
                  locations[index],
                  style: TextStyle(fontSize: 15),
                ),
                height: 20,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.black.withOpacity(.3)))),
              ),
            ),
          )*/
        ],
      ),
    );
  }
}
