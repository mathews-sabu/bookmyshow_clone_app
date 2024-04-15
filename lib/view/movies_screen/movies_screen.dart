// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:bookmyshow_clone_app/view/dummydb.dart';

import 'package:bookmyshow_clone_app/view/movies_screen/widgets/coming_soon.dart';
import 'package:bookmyshow_clone_app/view/movies_screen/widgets/film_grids.dart';

import 'package:flutter/material.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 250,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Now Showing",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  children: [Text("Thodupuzha | 9 movies")],
                )
              ],
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                ComingSoon(),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: DummyDb.moviePoster.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15,
                      mainAxisExtent: 300,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => FilmGrids(
                    moviePoster: DummyDb.moviePoster[index]["moviePoster"],
                    like: DummyDb.moviePoster[index]["like"],
                    rating: DummyDb.moviePoster[index]["rating"],
                    movieName: DummyDb.moviePoster[index]["movieName"],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
