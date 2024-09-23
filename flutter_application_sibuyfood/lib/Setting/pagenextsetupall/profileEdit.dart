// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class ProfileEdit extends StatelessWidget {
  final String username = 'Pariwat Pengrat'; // ข้อมูลที่จะแสดง
  final String phoneNumber = '012-345-6789';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'แก้ไขข้อมูลส่วนตัว',
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserInfoRow(
              title: 'ชื่อผู้ใช้',
              value: username,
              onEditTap: () {
                // ฟังก์ชันเมื่อกดแก้ไขข้อมูลชื่อผู้ใช้
                print('แก้ไขชื่อผู้ใช้');
              },
            ),
            const SizedBox(height: 16),
            _buildUserInfoRow(
              title: 'เบอร์โทร',
              value: phoneNumber,
              onEditTap: () {
                // ฟังก์ชันเมื่อกดแก้ไขเบอร์โทร
                print('แก้ไขเบอร์โทร');
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildUserInfoRow(
    {required String title,
    required String value,
    required VoidCallback onEditTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      IconButton(
        icon: Icon(Icons.edit,
            color: const Color.fromARGB(255, 41, 41, 41)), // ไอคอนแก้ไข
        onPressed: onEditTap, // ฟังก์ชันเมื่อกดปุ่มแก้ไข
      ),
    ],
  );
}
