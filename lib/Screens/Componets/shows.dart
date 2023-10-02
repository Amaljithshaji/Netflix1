import 'package:flutter/material.dart';

class Shows extends StatefulWidget {
  const Shows({super.key});

  @override
  State<Shows> createState() => _ShowsState();
}

class _ShowsState extends State<Shows> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                  "Continue Watching for Emenalo",
                  style: TextStyle(
                      fontSize: 20.92117691040039,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  )
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 160,
                width: 100,
                color: Colors.amber,
              ),
            ))),
          )
        ],
      ),
    );
  }
}