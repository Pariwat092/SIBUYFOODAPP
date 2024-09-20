// ignore_for_file: camel_case_types, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class Product_type extends StatelessWidget {
  const Product_type({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70.0, // ความกว้างของ Container
                  height: 70.0, // ความสูงของ Container
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 137, 137, 137), // สีพื้นหลังของ Container
                    shape: BoxShape.circle, // ทำให้ Container เป็นวงกลม
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://s359.kapook.com/rq/580/435/50/pagebuilder/d10d3774-d25d-478a-b479-a2314dcab48f.jpg', // URL ของรูปภาพ
                      fit: BoxFit.cover, // ให้ภาพครอบคลุมพื้นที่ทั้งหมด
                    ),
                  ),
                ),
                Text('เครื่องดื่ม'),
              ],
            ),
          ),
          Container(
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70.0, // ความกว้างของ Container
                  height: 70.0, // ความสูงของ Container
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 137, 137, 137), // สีพื้นหลังของ Container
                    shape: BoxShape.circle, // ทำให้ Container เป็นวงกลม
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://static.thairath.co.th/media/dFQROr7oWzulq5FZUHxCFjOKH5Gfp4kaxuojbqpgwmhf8cEYAXqkRr0rqxGfxOwGuMF.jpg', // URL ของรูปภาพ
                      fit: BoxFit.cover, // ให้ภาพครอบคลุมพื้นที่ทั้งหมด
                    ),
                  ),
                ),
                Text('ของหวาน'),
              ],
            ),
          ),
          Container(
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70.0, // ความกว้างของ Container
                  height: 70.0, // ความสูงของ Container
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 137, 137, 137), // สีพื้นหลังของ Container
                    shape: BoxShape.circle, // ทำให้ Container เป็นวงกลม
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://www.matichonacademy.com/wp-content/uploads/2020/05/ARTICLE1.jpg', // URL ของรูปภาพ
                      fit: BoxFit.cover, // ให้ภาพครอบคลุมพื้นที่ทั้งหมด
                    ),
                  ),
                ),
                Text('อาหารสด'),
              ],
            ),
          ),
          Container(
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70.0, // ความกว้างของ Container
                  height: 70.0, // ความสูงของ Container
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        255, 137, 137, 137), // สีพื้นหลังของ Container
                    shape: BoxShape.circle, // ทำให้ Container เป็นวงกลม
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://st.bigc-cs.com/cdn-cgi/image/format=webp,quality=90/public/media/catalog/product/39/88/8851989080239/8851989080239_2-20230815174315-.jpg', // URL ของรูปภาพ
                      fit: BoxFit.cover, // ให้ภาพครอบคลุมพื้นที่ทั้งหมด
                    ),
                  ),
                ),
                Text('ของใช้ทั่วไป'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
