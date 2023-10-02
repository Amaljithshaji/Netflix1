import 'package:flutter/material.dart';


import '../../controller/pics/DatabaseImages.dart';

class NewShows extends StatefulWidget {
  final String titles;
  const NewShows({super.key,required this.titles });
  

  @override
  State<NewShows> createState() => _NewShowsState();
}

class _NewShowsState extends State<NewShows> {
  
  @override
  
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                  widget.titles,
                  style: TextStyle(
                      fontSize: 20.92117691040039,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  )
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Emenalo.length,
              itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 160,
                width: 100,
                child: Image.asset(Emenalo[index]),
              ),
            ))),
          )
        ],
      ),
    );
  }
}