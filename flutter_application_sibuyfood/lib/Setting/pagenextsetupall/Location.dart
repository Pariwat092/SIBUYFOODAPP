import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class AddressManagePage extends StatefulWidget {
  @override
  _AddressManagePageState createState() => _AddressManagePageState();
}

class _AddressManagePageState extends State<AddressManagePage> {
  String address =
      '1234 Elm Street, Springfield, USA'; // ข้อมูลที่อยู่ที่จะแสดง

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'จัดการที่อยู่',
      ),
      backgroundColor: Colors.white, // พื้นหลังเป็นสีขาว
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserInfoRow(
              title: 'ที่อยู่',
              value: address.isEmpty ? 'ไม่มีข้อมูลที่อยู่' : address,
            ),
            SizedBox(height: 16),
          ],
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
