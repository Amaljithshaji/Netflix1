import 'package:flutter/material.dart';
import 'package:netflix/Screens/Componets/video.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.transparent,
                    child: Stack(children: [Image.asset('assets/images/Group 12.png'),
                    Center(child: Padding(
                      padding: const EdgeInsets.only(right: 20,bottom: 5),
                      child: GestureDetector(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>video()));
                      },
                        child: Image.asset('assets/images/Group 13 (1).png')),
                    ))
                    ]),
                    
                  )
                ),
              );
  }
}