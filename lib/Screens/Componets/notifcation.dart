import 'package:flutter/material.dart';

class Notifi extends StatelessWidget {
  const Notifi({super.key ,required this.title ,required this.adress});
  final String title;
  final String adress;

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.infinity,
              height: 100,
              decoration:     BoxDecoration(
                    color: Color(0xff424242)),
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            width: 150,
                            height: 85,
                            color: Colors.amber,
                            child: Image.asset(adress,
                            fit: BoxFit.fill,),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                        "New Arrival",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white
                                        )
                                    ),
                                    
                            ),
                            SizedBox(height: 5,),
                            Text(
            title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white
            )
        ),
        SizedBox(height: 5,),
        Text(
            "Nov 6",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 168, 165, 165)),
            )
        
                          ],
                        )
                      ],
                    ),
              );
  }
}