import 'package:flutter/material.dart';
import 'package:netflix/Screens/Componets/topsearch.dart';
//import 'package:netflix/controller/pics/DatabaseImages.dart';

import 'Componets/searchbar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Search_Bar(),
          Padding(
            padding: const EdgeInsets.only(top: 21, left: 15),
            child: Text("Top Searches",
                style: TextStyle(
                    fontSize: 26.74821662902832,
                    fontWeight: FontWeight.w700,
                    color: Colors.white)),
          ),
          SingleChildScrollView(
            child: TopSearch()

          
          )
        ]),
      ),
    );
  }
}
