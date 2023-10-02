import 'package:flutter/material.dart';
import 'Screens/SplashScreen.dart';
 void main()=> runApp(Netflix());

 class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(),debugShowCheckedModeBanner: false,);
  }
}