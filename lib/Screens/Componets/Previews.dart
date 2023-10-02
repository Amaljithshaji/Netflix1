import 'package:flutter/material.dart';

import '../../controller/pics/DatabaseImages.dart';

class Previews extends StatelessWidget {
  const Previews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 100,
                  child: ListView.builder(
                    itemCount: Preview.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: CircleAvatar(
                          child: Image.asset(Preview[index]),
                          radius: 50,
                        ),
                      )
                    ]);
                  })),
                );
  }
}