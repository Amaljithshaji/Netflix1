import 'package:flutter/material.dart';
import 'package:netflix/Screens/Componets/castle&castle.dart';
import 'package:netflix/Screens/Componets/notifcation.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//import 'package:netflix/controller/pics/DatabaseImages.dart';

class Coming_Soon extends StatefulWidget {
  const Coming_Soon({super.key});

  @override
  State<Coming_Soon> createState() => _Coming_SoonState();
}

class _Coming_SoonState extends State<Coming_Soon> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 19),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.red,
                      child: Icon(Icons.notifications),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Text("Notifications",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 21),
              child: Notifi(
                title: 'El Chapo',
                adress: 'assets/images/c2.jpg',
              ),
            ),
            Notifi(title: 'Peaky Blinders', adress: 'assets/images/c1.jpg'),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 477,
              color: Colors.black,
              child: Castle(),
            )
          ],
        ),
      ),
    );
  }
}
