import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:netflix/Screens/Componets/topbar.dart';
import 'package:netflix/Screens/Componets/topbar1.dart';
import 'package:netflix/controller/pics/DatabaseImages.dart';

class ShowPic1 extends StatelessWidget {
  const ShowPic1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                children: [
                 
CarouselSlider.builder(
  itemCount: Emenalo.length,
  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
    Container(
      child: Container(height: 400,width: double.infinity,
        child: Image.asset(Emenalo[itemIndex],fit: BoxFit.fill,))
    ),
    options:  CarouselOptions(
      height: 400,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,
   )
),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Top_Bar1()
                  ),
                  Positioned(top: 420,left: 150,
                    child: Container(height: 50,
                      child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                                      'assets/images/Group 16.png',fit: BoxFit.fitHeight,
                                    ),
                                    Image.asset(
                                      'assets/images/#2 in Nigeria Today.png',fit: BoxFit.fitHeight
                                    ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
  }
}