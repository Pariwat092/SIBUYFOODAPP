// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sibuyapp/Navigation_Ber/bottomnavigationber.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/textfromfield.dart';

class Loginpega extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 200,
                  //color: Colors.black,
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // จัดตำแหน่งให้อยู่กลาง
                    children: [
                      Text('เข้าสู่ระบบบัญชีของคุณ'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  hintText: 'ชื่อผู้ใช้',
                  prefixIcon: Icons.person,
                  validator: (String? input) {
                    if (input == null || input.isEmpty) {
                      return 'กรุณากรอกชื่อผู้ใช้';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 25.0),
                CustomTextFormField(
                  hintText: 'รหัสผ่าน',
                  prefixIcon: Icons.lock,
                  obscureText: true,
                  validator: (String? input) {
                    if (input == null || input.isEmpty) {
                      return 'กรุณากรอกรหัสผ่าน';
                    }
                    return null;
                  },
                ),
                Container(
                  height: 40,
                  width: 350,
                  //color: Colors.black,
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.end, // จัดตำแหน่งให้อยู่กลาง
                    children: [
                      Text(
                        'ลืมรหัสผ่าน?',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.0),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Mainpage()), // เปลี่ยนหน้าไปที่ Homepega
                        );
                      }
                    },
                    borderRadius: BorderRadius.circular(25.0),
                    child: Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      decoration: BoxDecoration(
                        color: Appcolor.black,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Center(
                        child: Text(
                          'เข้าสู่ระบบ',
                          style: TextStyle(
                            color: Appcolor.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
