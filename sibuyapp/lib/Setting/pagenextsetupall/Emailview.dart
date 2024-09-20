import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class EmailDisplayPage extends StatelessWidget {
  final String email = 'example@example.com'; // ข้อมูลอีเมลที่จะแสดง

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ข้อมูลอีเมล',
      ),
      backgroundColor: Colors.white, // พื้นหลังเป็นสีขาว
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildUserInfoRow(
          title: 'อีเมล',
          value: email,
        ),
      ),
    );
  }

  Widget _buildUserInfoRow({required String title, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
      ],
    );
  }
}
