import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class ConfreOder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text('ที่อยู่สำหรับจัดส่ง')
              ],
            )),
            Text('สินค้าของคุณ '),
            Container(
                width: 340,
                // height: 150,
                // color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('สถานนะคำสั่งซื้อ '),
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.black,
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.blue, // สีพื้นหลังของวงกลม
                        shape: BoxShape.circle, // กำหนดรูปทรงเป็นวงกลม
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      color: const Color.fromARGB(255, 148, 148, 148),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.blue, // สีพื้นหลังของวงกลม
                        shape: BoxShape.circle, // กำหนดรูปทรงเป็นวงกลม
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.black,
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.blue, // สีพื้นหลังของวงกลม
                        shape: BoxShape.circle, // กำหนดรูปทรงเป็นวงกลม
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
      backgroundColor: Appcolor.white,
    );
  }
}
