// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class ViewProducys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
        backgroundColor: Color.fromARGB(255, 244, 244, 244),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // Widget ที่อยู่ด้านล่างสุด
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 244, 244, 244),
              child: Column(
                children: [
                  Container(
                    height: 370,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 234, 142),
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://images.deliveryhero.io/image/fd-th/LH/ipmg-listing.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 350,
                    width: 370,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                '2.5 km',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 178, 178, 178)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                  width: 5.0,
                                  height: 5.0,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 178, 178, 178),
                                    shape: BoxShape.circle,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Text('5 นาที',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 178, 178, 178))),
                            ],
                          ),
                          width: 100,
                          height: 20,
                          // color: const Color.fromARGB(255, 121, 119, 112),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'กะเพาหมูกรอบ',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.remove),
                                        iconSize: 15,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 20,
                                        child: Center(
                                          child: Text('2'),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.add),
                                        iconSize: 15,
                                      )
                                    ],
                                  ),
                                  height: 35,
                                  width: 116,
                                  decoration: BoxDecoration(
                                    color: Appcolor.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 20,
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('4.8'),
                              Icon(
                                Icons.star,
                                size: 15,
                                color: Color.fromARGB(255, 240, 171, 10),
                              ),
                              Container(
                                  width: 5.0,
                                  height: 5.0,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 155, 155, 155),
                                    shape: BoxShape.circle,
                                  )),
                              Container(
                                  child: Row(
                                children: [
                                  Text('5K'),
                                  SizedBox(width: 5),
                                  Text('รีวิว')
                                ],
                              )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                            'ทั้งในเรื่องของรสชาติและการนำเสนอ ทุกจานถูกจัดแต่งอย่างสวยงาม และรสชาติก็อร่อยมาก โดยเฉพาะเมนูปลาแซลมอนย่างที่กรอบนอกนุ่มใน ทานคู่กับซอสสูตรพิเศษของทางร้านยิ่งเพิ่มรสชาติได้เป็นอย่างดี แน่นอนว่าต้องกลับไปทานอีกครั้ง!'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Widget ที่อยู่ตรงกลาง
            Positioned(
              bottom: 0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 95,
                    ),
                    Text(
                      '35.00',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Appcolor.lightGreen,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'เพิ่มไปยังตะกร้า',
                            style:
                                TextStyle(fontSize: 16, color: Appcolor.white),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Appcolor.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(Icons.local_mall_outlined),
                            height: 40,
                            width: 40,
                          )
                        ],
                      ),
                      width: 190,
                      height: 60,
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Appcolor.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                width: 420,
                height: 100,
              ),
            ),
            // Widget ที่อยู่ด้านบนสุด
          ],
        ),
      ),
    );
  }
}
