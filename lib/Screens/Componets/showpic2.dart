import 'package:flutter/material.dart';
//import 'package:netflix/Screens/Componets/topbar.dart';
//import 'package:netflix/Screens/Componets/topbar1.dart';
import 'package:netflix/Screens/Componets/topbar2.dart';

class ShowPic2 extends StatelessWidget {
  const ShowPic2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                children: [
                  Image.asset(
                    'assets/images/R2.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Top_Bar2()
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