import 'package:flutter/material.dart';

class Search_Bar extends StatefulWidget {
  const Search_Bar({super.key});

  @override
  State<Search_Bar> createState() => _Search_BarState();
}

class _Search_BarState extends State<Search_Bar> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            height: 52,
            decoration:     BoxDecoration(
        color: Color(0xff424242)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(Icons.search,color: Color(0xffbfbfbf),size: 25,),
            ),SizedBox(width: 10,),
            Text(
            "Search for a show, movie, genre, e.t.c.",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                 color: Color(0xffbfbfbf)
            ),
        ),SizedBox(width: 10,),
        Icon(Icons.mic,color: Color(0xffbfbfbf))
          ],
        ),
            );
  }
}