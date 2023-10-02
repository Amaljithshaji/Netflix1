import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(color: Color(0xff1a1a1a)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 10),
                      child: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                    Text("Tell friends about Netflix.",
                        style: TextStyle(
                            fontSize: 19.63433074951172,
                            fontWeight: FontWeight.w700,
                            color: Colors.white))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                      style: TextStyle(
                          fontSize: 11.781095504760742,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 11),
                  child: Text("Terms & Conditions",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12.781095504760742,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11, left: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 250,
                        height: 50,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 110,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Copy Link',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        width: 46,
                        height: 43.60000228881836,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff2cb742)),
                        child: Image.asset(
                          'assets/images/logos_whatsapp.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.asset(
                        'assets/images/Line 2.png',
                        height: 77,
                        width: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        width: 46,
                        height: 43.60000228881836,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(9.800000190734863),
                            color: Color(0xff395185)),
                        child: Image.asset(
                          'assets/images/logos_facebook.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.asset(
                        'assets/images/Line 2.png',
                        height: 77,
                        width: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        width: 46,
                        height: 43.60000228881836,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(9.800000190734863),
                            color: Color.fromARGB(255, 247, 247, 248)),
                        child: Image.asset(
                          'assets/images/Gmail-logo 1.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.asset(
                        'assets/images/Line 2.png',
                        height: 77,
                        width: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(width: 46,
                          height: 43.60000228881836,
                      color: Colors.transparent,
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.more_horiz,color:Colors.white,size: 20,),
                            Text('More',style: TextStyle(color: Colors.white,fontSize: 12),)
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
  }
}