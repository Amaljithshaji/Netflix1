import 'package:flutter/material.dart';
import 'package:netflix/Screens/Componets/Previews.dart';
import 'package:netflix/Screens/Componets/newshows.dart';
import 'package:netflix/Screens/Componets/playbutton.dart';
//import 'package:netflix/controller/bottombar.dart';
// import 'package:netflix/Screens/Componets/shows.dart';
// import 'package:netflix/Screens/Componets/shows.dart';

import 'Componets/showpic.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowPic(),
              SizedBox(height: 10,),
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
    );
  }
}
