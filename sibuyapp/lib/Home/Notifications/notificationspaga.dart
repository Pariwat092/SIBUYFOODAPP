import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'เเจ้งเตือน',
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'การแจ้งเตือน',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              _buildNotificationCard(
                title: "คำสั่งซื้อของคุณถูกจัดส่งแล้ว",
                time: "5 นาทีที่แล้ว",
                description: "ร้านค้าได้ทำการจัดส่งสินค้าของคุณแล้ว...",
                isImportant: true,
              ),
              SizedBox(height: 10),
              _buildNotificationCard(
                title: "มีข้อเสนอพิเศษสำหรับคุณ",
                time: "2 ชั่วโมงที่แล้ว",
                description: "รับส่วนลด 10% สำหรับการซื้อครั้งต่อไปของคุณ...",
                isImportant: false,
              ),
              SizedBox(height: 10),
              _buildNotificationCard(
                title: "บัญชีของคุณมีการเข้าสู่ระบบ",
                time: "เมื่อวาน",
                description: "เราพบการเข้าสู่ระบบจากอุปกรณ์ใหม่...",
                isImportant: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationCard({
    required String title,
    required String time,
    required String description,
    bool isImportant = false,
  }) {
    return Card(
      color: isImportant ? Colors.red[50] : Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
