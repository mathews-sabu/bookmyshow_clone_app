// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MovieDiscription extends StatelessWidget {
  const MovieDiscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.withOpacity(.5)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child:
                      Text("2D", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.withOpacity(.5)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Text("MALAYALAM",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text("2h 15m"),
              SizedBox(
                width: 10,
              ),
              Text("Adventure,Drama,Thriller"),
              SizedBox(
                width: 10,
              ),
              Text("U"),
              SizedBox(
                width: 10,
              ),
              Text("22 Feb, 2024")
            ],
          ),
          Row(
            children: [
              Text(
                "A group of friends get into a daring rescue  from  ",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.withOpacity(.5))),
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.9),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 1),
                      child: Row(
                        children: [
                          Icon(
                            Icons.trending_up_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Trending",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "4.2K ",
                        style: TextStyle(color: Colors.green, fontSize: 18)),
                    TextSpan(
                        text: "tickets booked in last 1 hour",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
