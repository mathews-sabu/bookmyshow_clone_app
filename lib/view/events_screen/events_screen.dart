// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookmyshow_clone_app/view/dummydb.dart';
import 'package:bookmyshow_clone_app/view/events_screen/widgets/different_items_bar.dart';
import 'package:bookmyshow_clone_app/view/events_screen/widgets/fifth_tab.dart';
import 'package:bookmyshow_clone_app/view/events_screen/widgets/fourth_tab.dart';
import 'package:bookmyshow_clone_app/view/events_screen/widgets/second_tab.dart';
import 'package:bookmyshow_clone_app/view/events_screen/widgets/third_tab.dart';
import 'package:bookmyshow_clone_app/view/location_screen/location_screen.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: double.infinity,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Experience Live Events",
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
              size: 35,
            ),
            SizedBox(
              width: 25,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      DummyDb.differentItemsBar.length,
                      (index) => DifferentItemsBar(
                          image: DummyDb.differentItemsBar[index]["image"],
                          text1: DummyDb.differentItemsBar[index]["text1"],
                          text2: DummyDb.differentItemsBar[index]["text2"])),
                ),
              ),
              SecondTab(),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.black.withOpacity(.9),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        DummyDb.thirdTab.length,
                        (index) => ThirdTab(
                              image: DummyDb.thirdTab[index]["image"],
                              date: DummyDb.thirdTab[index]["date"],
                              text1: DummyDb.thirdTab[index]["text1"],
                              text2: DummyDb.thirdTab[index]["text2"],
                              text3: DummyDb.thirdTab[index]["text3"],
                              rate: DummyDb.thirdTab[index]["rate"],
                            )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FourthTab(),
              SizedBox(
                height: 10,
              ),
              FifthTab()
            ],
          ),
        ));
  }
}
