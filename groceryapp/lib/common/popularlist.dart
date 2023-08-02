

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class popularlist extends StatelessWidget {
  const popularlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16, left: 15, right: 10, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 240, 28, 211)),
              ),
              Text(
                "See all",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 235, 65, 241)),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 1; i <= 8; i++)
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 6)
                    ]),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Image.asset(
                          "images/$i.jpg",
                          height: 100,
                          width: 138,
                        ),
                      ),
                    ]))
            ],
          ),
        )
      ],
    );
  }
}
