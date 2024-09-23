// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class CancelAccount extends StatefulWidget {
  @override
  State<CancelAccount> createState() => _CancelAccountState();
}

class _CancelAccountState extends State<CancelAccount> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: CustomAppBar(
        title: 'ยกเลิกบัญชี',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'การลบบัญชีเป็นการยกเลิกการใช้งานระบบ SI BUT FOOD ผุ้ใช้งานจะไม่สามารถกลับมาใช้บัญชีนี้ได้อีก ข้อมูลส่วนบุคคลจะถูกทำงายเเละไม่สามารถกู้คืนข้อมุลได้',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Spacer(),
          Row(
            children: [
              Container(
                child: Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  activeColor: Colors.black,
                  checkColor: Colors.white,
                ),
              ),
              Text('คุณได้อ่านเเละเข้าใจข้อควรทราบในการลบัญชีเเล้ว ')
            ],
          ),
          Container(
            height: 130,
            width: double.infinity,
            child: Column(
              children: [
                Divider(
                  thickness: 1,
                  color: Colors.grey[300],
                ),
                Container(
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 191, 191, 191),
                    borderRadius: BorderRadius.circular(16.0), // ความโค้งของมุม
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ยืนยันยกเลิกบัญชีผู้ใช้',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 244, 102, 92)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 192, 192, 192),
                    borderRadius: BorderRadius.circular(16.0), // ความโค้งของมุม
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ยกเลิก'),
                    ],
                  ),
                )
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          // ),
        ],
      ),
    );
  }
}
