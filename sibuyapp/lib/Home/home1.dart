// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_print, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:sibuyapp/Home/Listporduct/porducttype_more.dart';
import 'package:sibuyapp/Home/Listporduct/stoepopularall.dart';
import 'package:sibuyapp/Home/Notifications/notificationspaga.dart';
import 'package:sibuyapp/Home/classbanner.dart';
import 'package:sibuyapp/Home/location.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/Home/stroepopular.dart';
import 'package:sibuyapp/Home/producttoday.dart';
import 'package:sibuyapp/Home/producttype.dart';
import 'package:sibuyapp/classallapp/styleText.dart';

import 'package:sibuyapp/classallapp/textfromfield.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2016/06/20/04/30/asian-man-1468032_1280.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  width: 325,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pariwat Pengrat',
                        style: TextStyle(fontSize: 16),
                      ),
                      Stack(
                        children: [
                          IconButton(
                            icon: Icon(Icons.notifications),
                            iconSize: 30.0,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotificationsPage()),
                              );

                              print('Notifications button pressed');
                            },
                          ),
                          Positioned(
                            right: 6,
                            top: 6,
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 16,
                                minHeight: 16,
                              ),
                              child: Text(
                                '3', // จำนวนการแจ้งเตือน
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(width: 370, child: LocationWidget()),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 370,
                    child: CustomTextFormField(
                        hintText: 'ค้นหา',
                        prefixIcon: Icons.search,
                        textStyle: AppFonts.ticontentsmell),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 370,
                    height: 180,
                    child: BannerSlider(),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 370,
                    height: 170,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'ประเภทสินค้า',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Product_type()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 35,
                    width: 370,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ร้านค้าเเนะนำ',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Stoepopularall()),
                            );
                            print('ดูทั้งหมด tapped');
                          },
                          child: Text(
                            'ดูทั้งหมด',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 370,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Gridproduct(),
                            SizedBox(
                              width: 15,
                            ),
                            Gridproduct(),
                            SizedBox(
                              width: 15,
                            ),
                            Gridproduct(),
                            SizedBox(
                              width: 15,
                            ),
                            Gridproduct(),
                            SizedBox(
                              width: 15,
                            ),
                            Gridproduct(),
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 35,
                    width: 370,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 1,
                        ),
                        Text('สินค้าวันนี้',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    width: 370,
                    child: Column(
                      children: [
                        ProductToday(),
                        SizedBox(
                          height: 10,
                        ),
                        ProductToday(),
                        SizedBox(
                          height: 10,
                        ),
                        ProductToday(),
                        SizedBox(
                          height: 10,
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //     print('ดูทั้งหมด tapped');
                        //   },
                        //   child: Text(
                        //     'ดูทั้งหมด',
                        //     style: TextStyle(
                        //       fontSize: 16,
                        //       color: Colors.grey,
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Icon(
                        //   Icons.keyboard_double_arrow_down,
                        //   color: const Color.fromARGB(255, 199, 199, 199),
                        // ),
                        // SizedBox(
                        //   height: 30,
                        // )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: Appcolor.white,
    );
  }
}
