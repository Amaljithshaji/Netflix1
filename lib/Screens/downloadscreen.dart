import 'package:flutter/material.dart';

class Download_Screen extends StatefulWidget {
  const Download_Screen({super.key});

  @override
  State<Download_Screen> createState() => _Download_ScreenState();
}

class _Download_ScreenState extends State<Download_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 36, top: 10),
            child: Text("Smart Downloads",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55, left: 15),
            child: Text("Introducing Downloads For You",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF))),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 30),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Image.asset(
                'assets/images/e1.png',
                width: 200,
                height: 200,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              child: Container(
                height: 50,
                width: 370,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xff0071EB),),
                child: Center(
                    child: Text(
                  'SETUP',
                  style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w400),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 50,right: 50),
            child: Container(
              height: 40,
              width: 320,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff424242),),
              child: Center(
                child: Text(
              "Find Something to Download",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                 color: Colors.white
              )
                  )
              ),
            ),
          )
        ]),
      ),
    );
  }
}
