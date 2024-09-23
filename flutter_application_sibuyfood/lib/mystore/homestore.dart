// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class Homestore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'ร้านอาหารโอชา',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 250,
                width: 390,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 1.0,
                  ),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.pexels.com/photos/2679323/pexels-photo-2679323.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ร้านอาหารโอชา',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '456 ถนนเยาวราช, แขวงวังบูรพาภิรมย์, เขตพระนคร, กรุงเทพมหานคร 10200',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'คะแนนรีวิว: 4.5',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'ร้ฆานอาหารโอชาเสิร์ฟอาหารไทยแท้ที่อร่อยและสดใหม่ในบรรยากาศสบายๆ พร้อมการบริการที่เป็นมิตร เรามีเมนูหลากหลายตั้งแต่อาหารจานหลักไปจนถึงของหวานที่คัดสรรมาอย่างดี หากคุณกำลังมองหาประสบการณ์การรับประทานอาหารที่น่าจดจำ ไม่ควรพลาดที่นี่!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'สินค้าที่โพสต์ขาย',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        color: Colors.white,
                        child: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=600'), // รูปภาพสินค้า
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Text(':ซุป $index'),
                          subtitle: const Text('ราคา ฿45.00'),
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            //เพิ่มหน้าสินค้า
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 5, 5, 5),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.add,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            iconSize: 30.0,
            onPressed: () {
              Postprpduct();
              print('Add product button pressed');
            },
          ),
        ),
      ),
    );
  }
}

//หน้าโพสต์สินค้า

class Postprpduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'เพิ่มสินค้าของคุณ',
      ),
      body: Center(
          child: Column(
        children: [
          TextField(),
        ],
      )),
    );
  }
}
