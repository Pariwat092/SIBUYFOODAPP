// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/styleText.dart';

class Gridproduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 160,
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://kiji.life/eats/wp-content/uploads/2019/04/DSC_3291.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              child: Row(
            children: [
              Text(
                'ร้านอารหาร',
                style: AppFonts.ticontent1,
              ),
            ],
          )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '10 กม.',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Color.fromARGB(255, 255, 196, 0),
                ),
                Text('4.2', style: TextStyle(fontSize: 14, color: Colors.grey)),
                Text('คะเเนน',
                    style: TextStyle(fontSize: 14, color: Colors.grey))
              ],
            ),
          )
        ],
      ),
    );
  }
}
