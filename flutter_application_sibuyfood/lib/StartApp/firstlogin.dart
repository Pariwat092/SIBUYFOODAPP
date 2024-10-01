// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/StartApp/login.dart';
import 'package:sibuyapp/StartApp/register.dart';

class Firstlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://today-obs.line-scdn.net/0hmJWt88BXMmVqDSGl7R5NMlJbPhRZayhsSGh8BUsNOAJPIXNgUz9hBk8NbEkUaSYySm5_C0cNbFNCOXIwBA/w1200'),
                      fit: BoxFit.cover)),
              width: 450,
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Appcolor.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Si Buy Food',
                    style: TextStyle(
                      color: Appcolor.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Loginpega()), // เปลี่ยนหน้าไปที่ Homepega
                  );
                },
                borderRadius: BorderRadius.circular(25.0), // มุมโค้งของปุ่ม
                child: Container(
                  width: 250,
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                  decoration: BoxDecoration(
                    color: Appcolor.black, // สีพื้นหลังของ Container
                    borderRadius:
                        BorderRadius.circular(25.0), // มุมโค้งของ Container
                  ),
                  child: Center(
                    child: Text(
                      'เข้าสู่ระบบ',
                      style: TextStyle(
                        color: Appcolor.white, // สีข้อความของปุ่ม
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Registerpega(), // เปลี่ยนหน้าไปที่ Homepega
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(25.0), // มุมโค้งของปุ่ม
                child: Container(
                  width: 250,
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                  decoration: BoxDecoration(
                    color: Appcolor.white, // สีพื้นหลังของ Container
                    borderRadius:
                        BorderRadius.circular(25.0), // มุมโค้งของ Container
                    border: Border.all(
                      color: Appcolor.black, // สีของขอบเส้นกรอบ
                      width: 2.0, // ความหนาของขอบเส้นกรอบ
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'สมัครสมาชิก',
                      style: TextStyle(
                        color: Appcolor.black, // สีข้อความของปุ่ม
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 30,
              width: 300,
              //color: Colors.black,
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // จัดตำแหน่งให้อยู่กลาง
                children: [
                  Text('ดำเนินการในฐานะเเขก',
                      style: TextStyle(fontSize: 14, color: Appcolor.teal)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
