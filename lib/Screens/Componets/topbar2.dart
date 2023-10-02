import 'package:flutter/material.dart';
import 'package:netflix/Screens/home.dart';
import 'package:netflix/Screens/movies.dart';
import 'package:netflix/Screens/tvshows.dart';

class Top_Bar2 extends StatefulWidget {
  
  const Top_Bar2({super.key});

  @override
  State<Top_Bar2> createState() => _Top_Bar2State();
}

class _Top_Bar2State extends State<Top_Bar2> {
  List<String> Mylist=['All','Tv Shows','Movies','my List',];
  @override
  Widget build(BuildContext context) {
    var SelectValue;
    return Container(
                        height: 57,
                        width: 400,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20 ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/netflix.png',
                                  height: 100,
                                ),
                              ),
                              Container(
                                child: DropdownButton(
                                  dropdownColor: Colors.black,
                                  hint: Text('Movies',
                                      style: TextStyle(fontSize: 20,color: Colors.white),),
                                  value: SelectValue,
                                  items: [
                                  DropdownMenuItem<String>(
                                    child: 
                                    GestureDetector(
                                      onTap: ()=>Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=>Home())),
                                      child: Text('All',
                                      style: TextStyle(fontSize: 20,color: Colors.white),),
                                    ), value:'All'),
                                     DropdownMenuItem<String>(
                                    child: GestureDetector(onTap: ()=>Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=>TvShows())),
                                      child: Text('Tv Shows',
                                      style: TextStyle(fontSize: 20,color: Colors.white),),
                                    ), value:'Tv Shows'),
                                     DropdownMenuItem<String>(
                                    child: GestureDetector(
                                      onTap: ()=>Navigator.push(context, MaterialPageRoute(
                                        builder: (context)=>Movies())),
                                      child: Text('Movies',
                                      style: TextStyle(fontSize: 20,color: Colors.white),),
                                    ), value:'Movies'),
                                     DropdownMenuItem<String>(
                                    child: GestureDetector(
                                      child: Text('my List',
                                      style: TextStyle(fontSize: 20,color: Colors.white),),
                                    ), value:'my List') 
                                ], onChanged: (newValue){
                                   SelectValue = newValue;
                                   setState(() {
                                                
                                              });
                                }),
                              )
                              // Center(child: GestureDetector(onTap: (){},
                              //   child: Text('Tv Shows',style: TextStyle(fontSize: 20,color: Colors.white),))),
                              // Center(child: GestureDetector(onTap: (){},
                              //   child: Text('Movies',style: TextStyle(fontSize: 20,color: Colors.white),))),
                              // Center(child: GestureDetector(onTap: (){},
                              //   child: Text('Mylist',style: TextStyle(fontSize: 20,color: Colors.white),)))

                              
                            ],
                          ),
                        ));
  }
}