import 'package:flutter/material.dart';
import 'package:netflix/Screens/homeScreen.dart';
import 'package:netflix/utlits/image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen())));
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Mylog)
        ],
      ),
    );
  }
}