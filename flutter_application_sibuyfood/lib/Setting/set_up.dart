// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sibuyapp/Setting/pagenextsetupall/Cancle_account.dart';
import 'package:sibuyapp/Setting/pagenextsetupall/Emailview.dart';
import 'package:sibuyapp/Setting/pagenextsetupall/Location.dart';
import 'package:sibuyapp/Setting/pagenextsetupall/help.dart';
import 'package:sibuyapp/Setting/pagenextsetupall/language.dart';
import 'package:sibuyapp/Setting/pagenextsetupall/profileEdit.dart';
import 'package:sibuyapp/Setting/pagenextsetupall/version.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class SetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarNoBack(
        title: 'ตั้งค่า',
      ),
      backgroundColor: Appcolor.white, // กำหนดสีพื้นหลังของหน้า
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSettingsOption(
              title: 'แก้ไขข้อมูลส่วนตัว',
              icon: Icons.person_2_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileEdit()),
                );
              },
            ),
            _buildSettingsOption(
              title: 'อีเมล',
              icon: Icons.email_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmailDisplayPage()),
                );
              },
            ),
            _buildSettingsOption(
              title: 'เปลี่ยนที่อยู่',
              icon: Icons.location_on_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddressManagePage()),
                );
              },
            ),
            _buildSettingsOption(
              title: 'เปลื่ยนภาษา',
              icon: Icons.translate_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LanguageSelectionScreen()),
                );
              },
            ),
            _buildSettingsOption(
              title: 'ศูนย์ช่วยเหลือ',
              icon: Icons.question_mark_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpCenterScreen()),
                );
              },
            ),
            _buildSettingsOption(
              title: 'เวอร์ชัน',
              icon: Icons.info_outline,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VersionScreen()),
                );
              },
            ),
            _buildSettingsOption(
              title: 'ยกเลิกบัญชีผู้ใช้งาน',
              icon: Icons.priority_high_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CancelAccount()),
                );
              },
              isDanger: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsOption({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
    bool isDanger = false,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDanger ? Appcolor.oliveGreen : Colors.grey[300]!,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Ink(
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                color: isDanger ? Appcolor.oliveGreen : Colors.black,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios,
                color: isDanger ? Appcolor.oliveGreen : Colors.black),
            leading: Icon(icon,
                color: isDanger ? Appcolor.oliveGreen : Colors.black),
          ),
        ),
      ),
    );
  }
}
