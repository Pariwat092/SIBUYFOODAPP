import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';
import 'package:sibuyapp/classallapp/styleText.dart';

class Stoepopularall extends StatelessWidget {
  final List<Map<String, String>> storeList = [
    {
      'name': 'ร้านอาหารโอชา',
      'address':
          '456 ถนนเยาวราช, แขวงวังบูรพาภิรมย์, เขตพระนคร, กรุงเทพมหานคร 10200',
      'rating': '4.5',
      'image':
          'https://images.pexels.com/photos/2679323/pexels-photo-2679323.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'profileImage':
          'https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=800',
      'description':
          'ร้านอาหารโอชาเสิร์ฟอาหารไทยแท้ที่อร่อยและสดใหม่ในบรรยากาศสบายๆ พร้อมการบริการที่เป็นมิตร.'
    },
    {
      'name': 'ร้านคาเฟ่ชมสวน',
      'address': '123 ซอยสุขใจ, แขวงจตุจักร, เขตจตุจักร, กรุงเทพมหานคร 10900',
      'rating': '4.8',
      'image':
          'https://images.pexels.com/photos/4587993/pexels-photo-4587993.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'profileImage':
          'https://images.pexels.com/photos/1704126/pexels-photo-1704126.jpeg?auto=compress&cs=tinysrgb&w=800',
      'description':
          'คาเฟ่ชมสวน บรรยากาศร่มรื่น ท่ามกลางธรรมชาติ พร้อมเครื่องดื่มและขนมหวานหลากหลาย.'
    },
    {
      'name': 'ร้านเบเกอรี่หวานใจ',
      'address': '78 ถนนพระราม 9, แขวงสวนหลวง, เขตสวนหลวง, กรุงเทพมหานคร 10250',
      'rating': '4.7',
      'image':
          'https://images.pexels.com/photos/270348/pexels-photo-270348.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'profileImage':
          'https://images.pexels.com/photos/139829/pexels-photo-139829.jpeg?auto=compress&cs=tinysrgb&w=800',
      'description':
          'เบเกอรี่หวานใจ ที่อบสดใหม่ทุกวัน มีทั้งเค้กและขนมปังให้เลือกมากมาย.'
    },
    {
      'name': 'ร้านเครื่องดื่มสดชื่นใจ',
      'address': '12 ถนนสุขสำราญ, แขวงบางรัก, เขตบางรัก, กรุงเทพมหานคร 10500',
      'rating': '4.6',
      'image':
          'https://images.pexels.com/photos/3311094/pexels-photo-3311094.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'profileImage':
          'https://images.pexels.com/photos/3026808/pexels-photo-3026808.jpeg?auto=compress&cs=tinysrgb&w=800',
      'description':
          'เครื่องดื่มสดชื่นใจ บริการน้ำผลไม้สดและสมูทตี้เพื่อสุขภาพ.'
    },
    {
      'name': 'ร้านข้าวมันไก่ประตูน้ำ',
      'address': '95 ถนนราชปรารภ, แขวงพญาไท, เขตราชเทวี, กรุงเทพมหานคร 10400',
      'rating': '4.9',
      'image':
          'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'profileImage':
          'https://images.pexels.com/photos/533325/pexels-photo-533325.jpeg?auto=compress&cs=tinysrgb&w=800',
      'description':
          'ข้าวมันไก่ประตูน้ำเจ้าเก่า ที่เสิร์ฟเมนูอร่อยและราคาย่อมเยา.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ร้านค้าแนะนำ',
      ),
      body: ListView.builder(
        itemCount: storeList.length,
        itemBuilder: (context, index) {
          final store = storeList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(store['profileImage']!),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(store['name']!, style: AppFonts.ticontent),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Image.network(
                  store['image']!,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        store['address']!,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            'คะแนนรีวิว: ${store['rating']}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Icon(
                            Icons.star, // แทนที่ด้วยไอคอนที่คุณต้องการ
                            size: 15.0,
                            color: Color.fromARGB(255, 255, 196, 0),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(
                        store['description']!,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey[300],
                ),
              ],
            ),
          );
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}
