import 'package:flutter/material.dart';
//import 'package:netflix/Screens/home.dart';

import '../controller/bottombar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Image> MImage = [
    Image.asset(
      'assets/images/Group 66.png',
      fit: BoxFit.fill,
    ),
    Image.asset('assets/images/Group 67.png', fit: BoxFit.fill),
    Image.asset('assets/images/Group 68.png', fit: BoxFit.fill),
    Image.asset('assets/images/Group 69.png', fit: BoxFit.fill),
  ];

  @override
  Widget build(BuildContext context) {
    // bool isloading =true;
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      // isloading==true?Center(child: CircularProgressIndicator()): 
       SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 57, left: 130),
                  child: Image.asset(
                    'assets/images/logos_netflix.png',
                    width: 138,
                    height: 37,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 100),
                  child: Image.asset(
                    'assets/images/pencil.png',
                    width: 24,
                    height: 24,
                  ),
                )
              ],
            )),
            Expanded(
              child: GridView.builder(
                  itemCount: MImage.length,
                  padding: EdgeInsets.fromLTRB(50, 125, 50, 100),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (Context, index) {
                    return Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Bottombar()));
                        },
                        child: Container(
                          width: 100,
                          height: 121,
                          color: Colors.transparent,
                          child: MImage[index],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 200, bottom: 200),
              child: Column(
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: Image.asset('assets/images/Group 1 (1).png'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Add Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
