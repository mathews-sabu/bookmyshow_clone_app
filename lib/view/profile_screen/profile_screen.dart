// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookmyshow_clone_app/view/dummydb.dart';
import 'package:bookmyshow_clone_app/view/profile_screen/widgets/different_settings_tabs.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 150,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [Text("Edit Profile"), Icon(Icons.chevron_right)],
                )
              ],
            ),
          ),
          actions: [
            Icon(
              Icons.person_rounded,
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
              Column(
                children: List.generate(
                    DummyDb.settingsTab.length,
                    (index) => DifferentSettingsTab(
                          icon1: DummyDb.settingsTab[index]["icon1"],
                          title: DummyDb.settingsTab[index]["title"],
                          subTitle: DummyDb.settingsTab[index]["subTitle"],
                          // trailing: DummyDb.settingsTab[index]["trailing"],
                        )),
              ),
              Container(
                height: 200,
                color: Colors.grey.withOpacity(.5),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Share"),
                        Text("|"),
                        Text("Rate Us"),
                        Text("|"),
                        Row(
                          children: [
                            Text(
                              "book",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              "assets/images/app_icon.png",
                              scale: 8,
                            ),
                            Text(
                              'smile',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text("App Version: 14.8.2")
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
