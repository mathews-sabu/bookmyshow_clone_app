// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bookmyshow_clone_app/view/home_screen/select_movie/select_movie.dart';
import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster(
      {super.key,
      required this.moviePoster,
      required this.rating,
      required this.like,
      required this.movieName});
  final String moviePoster;
  final String rating;
  final String like;
  final String movieName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectMovie(),
                  ));
            },
            child: Container(
              height: 200,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(moviePoster), fit: BoxFit.cover)),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.2),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.red,
                ),
                Text(rating),
                SizedBox(
                  width: 10,
                ),
                Text(like)
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          movieName,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
