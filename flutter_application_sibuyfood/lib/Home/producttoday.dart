// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sibuyapp/Home/view_producys.dart';

class ProductToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ViewProducys()),
              );

              print('กดสินค้า');
            },
            child: Container(
              width: 170,
              height: 274,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      'https://s359.kapook.com/r/600/auto/pagebuilder/778ebafb-e944-4abd-99c1-e28411656fd4.jpg', // URL รูปภาพสินค้า
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'ชื่อสินค้า',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // กล่องสินค้าตัวที่สอง
          Container(
            width: 170,
            height: 274,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // จัดตำแหน่งเนื้อหาไปทางซ้าย
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15), // มุมโค้งสำหรับภาพ
                  child: Image.network(
                    'https://s359.kapook.com/r/600/auto/pagebuilder/778ebafb-e944-4abd-99c1-e28411656fd4.jpg', // URL รูปภาพสินค้า
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10), // ระยะห่างระหว่างภาพและเนื้อหาอื่นๆ
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // ช่องว่างด้านข้าง
                  child: Text(
                    'ชื่อสินค้า',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black, // สีตัวหนังสือเรียบง่าย
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0), // ช่องว่างด้านข้าง
                  child: Text(
                    'ราคา: \$100',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700], // สีตัวหนังสือที่อ่อนกว่า
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
