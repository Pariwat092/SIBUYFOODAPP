// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';
import 'package:sibuyapp/classallapp/styleText.dart';
import 'package:sibuyapp/classallapp/textfromfield.dart';
import 'package:sibuyapp/StartApp/login.dart';

class Registerpega extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: '',
        backgroundColor: Appcolor.black, // เปลี่ยนสีของ AppBar สำหรับหน้านี้
      ),
      body: Container(
        width: double
            .infinity, // ใช้ double.infinity เพื่อให้ครอบคลุมความกว้างของหน้าจอ
        height: 900,
        color: Color.fromARGB(255, 255, 255, 255), // สีพื้นหลัง
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Icon(
                      Icons.group, // ไอคอนที่ต้องการแสดง
                      size: 100.0, // ขนาดของไอคอน
                      color: Color.fromARGB(255, 8, 8, 8), // สีของไอคอน
                    ),
                  ),
                  Text('สร้างบัญชีของคุณ', style: AppFonts.ticontent)
                ],
              ),
              width: double
                  .infinity, // ใช้ double.infinity เพื่อให้ครอบคลุมความกว้างของหน้าจอ
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Appcolor.white.withOpacity(0.5),
                    Appcolor.black,
                  ],
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                    SizedBox(height: 20.0),
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
                    SizedBox(height: 20.0),
                    CustomTextFormField(
                      hintText: 'อีเมล',
                      prefixIcon: Icons.mail,
                      validator: (String? input) {
                        if (input == null || input.isEmpty) {
                          return 'กรุณากรอกอีเมล';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    CustomTextFormField(
                      hintText: 'เบอร์โทรศัพท์',
                      prefixIcon: Icons.call,
                      validator: (String? input) {
                        if (input == null || input.isEmpty) {
                          return 'กรุณากรอกเบอร์โทรศัพท์';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Loginpega(), // เปลี่ยนหน้าไปที่ Loginpega
                              ),
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
                              'ลงทะเบียน',
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
          ],
        ),
      ),
    );
  }
}
