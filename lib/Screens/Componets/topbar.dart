import 'package:flutter/material.dart';
import 'package:netflix/Screens/movies.dart';
import 'package:netflix/Screens/tvshows.dart';

class Top_Bar extends StatelessWidget {
  
  const Top_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                        height: 57,
                        width: 400,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20 ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/netflix.png',
                                  height: 100,
                                ),
                              ),
                              Center(child: GestureDetector(onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TvShows()));
                              },
                                child: Text('Tv Shows',style: TextStyle(fontSize: 20,color: Colors.white),))),
                              Center(child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Movies()));},
                                child: Text('Movies',style: TextStyle(fontSize: 20,color: Colors.white),))),
                              Center(child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TvShows()));},
                                child: Text('Mylist',style: TextStyle(fontSize: 20,color: Colors.white),)))

                              
                            ],
                          ),
                        ));
  }
}