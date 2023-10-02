import 'package:flutter/material.dart';
//import 'package:netflix/Screens/Componets/showpic1.dart';
import 'package:netflix/Screens/Componets/showpic2.dart';

import 'Componets/Previews.dart';
import 'Componets/newshows.dart';
import 'Componets/playbutton.dart';
//import 'Componets/showpic.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowPic2(),
              PlayButton(),
              Padding(
                padding: const EdgeInsets.only(left: 16,top: 20),
                child: Text(
            "Previews",
            style: TextStyle(
                fontSize: 26.74821662902832,
                fontWeight: FontWeight.w700,
                color: Colors.white
            )
        )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Previews()
              ),
              
              NewShows(titles: 'Continue Watching for Emenalo', ),
              NewShows(titles: 'Popular on Netflix',),
              NewShows(titles: 'Trending Now',),
              NewShows(titles: 'Top 10 in Nigeria Today',),
              NewShows(titles: 'My List',),
              NewShows(titles: 'African Movies',),
              NewShows(titles: 'Netflix Originals',),
              NewShows(titles: 'Watch It Again',),
              NewShows(titles: 'New Releases',),
              

              
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Bottombar(),
    
      )
    );
  }
}