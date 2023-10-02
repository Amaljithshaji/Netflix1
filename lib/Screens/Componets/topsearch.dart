import 'package:flutter/material.dart';

import '../../controller/pics/DatabaseImages.dart';

class TopSearch extends StatefulWidget {
  const TopSearch({super.key});
  

  @override
  State<TopSearch> createState() => _TopSearchState();
}

class _TopSearchState extends State<TopSearch> {
  List<String> Top=[
    'Citation',
    'Oloture',
    'The Setup',
    'Breaking Bad',
    'Ozark',
    'The Governor',
    'Your Excellency',
  ];
  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.only(top: 21),
              child: Container(
                height: 654,
                color: Colors.black,
                child: ListView.builder(
                  itemCount: SList.length,
                  itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(color: Color(0xff424242)
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Container(height: 100,width: 150,
                            child: Image.asset(SList[i],fit: BoxFit.fill,)),
                            
                          Text(
            Top[i],
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Color(0xffFFFFFF),

            )
        ),SizedBox(width: 80,),
        Icon(Icons.play_circle_outline,size: 40,color: Color(0xffFFFFFF),),

                        ]),
                        ),
                  );
                }),
              ),
            );
  }
}