import 'package:flutter/material.dart';
import 'package:netflix/Screens/comingsoon.dart';
import 'package:netflix/Screens/downloadscreen.dart';
import 'package:netflix/Screens/home.dart';
import 'package:netflix/Screens/menuscreen.dart';
import 'package:netflix/Screens/searchscreen.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _CurrentIndex =0;
  final List<Widget> _pages =[
    Home(),
    SearchScreen(),
    Coming_Soon(),
    Download_Screen(),
    Menu_Screen()
  ];
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _pages[_CurrentIndex],
      bottomNavigationBar: Container(
      child: BottomNavigationBar( onTap: (index) {
        setState(() {
          _CurrentIndex = index;
        });
      },
      currentIndex: _CurrentIndex,
      backgroundColor: Color(121212),
      // type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.black),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',backgroundColor: Colors.black),
      BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined),label: 'Coming Soon',backgroundColor: Colors.black),
      BottomNavigationBarItem(icon: Icon(Icons.download),label: 'Downloads',backgroundColor: Colors.black),
      BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'More',backgroundColor: Colors.black),

    ]),)
    );
    
  }
}