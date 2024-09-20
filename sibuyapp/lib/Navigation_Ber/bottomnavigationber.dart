// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sibuyapp/Home/home1.dart';
import 'package:sibuyapp/Myproduct/product_list.dart';
import 'package:sibuyapp/Setting/set_up.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/mystore/firststore.dart';

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int index = 0;

  final List<Widget> screens = [
    Home1(),
    ProductList(),
    Mystore(),
    SetUp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index], // แสดงหน้าจอที่เลือกโดยตรง
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Appcolor.white,
        selectedItemColor: Color.fromARGB(255, 28, 138, 182),
        unselectedItemColor: Colors.black.withOpacity(0.6),
        currentIndex: index,
        onTap: (newIndex) {
          setState(() {
            index = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'หน้าหลัก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_mall_outlined),
            activeIcon: Icon(Icons.local_mall),
            label: 'รายการ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            activeIcon: Icon(Icons.storefront_rounded),
            label: 'ร้านค้าของฉัน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'ตั้งค่า',
          ),
        ],
      ),
    );
  }
}
