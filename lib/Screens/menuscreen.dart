import 'package:flutter/material.dart';
import 'package:netflix/Screens/Componets/aboutNetflix.dart';

class Menu_Screen extends StatefulWidget {
  const Menu_Screen({super.key});

  @override
  State<Menu_Screen> createState() => _Menu_ScreenState();
}

class _Menu_ScreenState extends State<Menu_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 120,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/Group 66.png',
                    fit: BoxFit.contain,
                    width: 58,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/Group 67.png',
                    fit: BoxFit.contain,
                    width: 58,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/Group 68.png',
                    fit: BoxFit.contain,
                    width: 58,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/Group 69.png',
                    fit: BoxFit.contain,
                    width: 58,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, right: 10),
                  child: Container(
                    width: 58,
                    height: 60,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Center(
                        child: Icon(
                      Icons.add,
                      size: 60,
                      color: Color(0xffc4c4c4),
                    )),
                  ),
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: Color(0xffc4c4c4),
                size: 15,
              ),SizedBox(width: 5,),
              Container(
                height: 30,
                child: Text("Manage Profiles",
                    style: TextStyle(
                        fontSize: 24.722221374511719,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              )
            ],
          ),
          About(),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(children: [
              Icon(Icons.check_sharp,color: Colors.white,size: 50,weight: Checkbox.width,),
              SizedBox(width: 10,),
              Text('My List',style: TextStyle(color: Colors.white,fontSize: 20),)
            ],),
          ),

          Divider(height: 20,color: Colors.white,),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "App Settings ",
              style: TextStyle(
                  fontSize: 20.722221374511719,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              )
                  ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Account",
              style: TextStyle(
                  fontSize: 20.722221374511719,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              )
                  ),
          ),
           SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Help",
              style: TextStyle(
                  fontSize: 20.722221374511719,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              )
                  ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Sign Out",
              style: TextStyle(
                  fontSize: 20.722221374511719,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              )
                  ),
          ),


        ],
      )),
    );
  }
}
