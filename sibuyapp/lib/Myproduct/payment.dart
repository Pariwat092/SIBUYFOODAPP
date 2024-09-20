// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class Paymentpage extends StatefulWidget {
  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'เลือกวิธีชำระเงิน',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPaymentOption(
              icon: Icons.attach_money_outlined,
              text: 'เงินสด',
            ),
            const SizedBox(height: 10),
            _buildPaymentOption(
              icon: Icons.account_balance_wallet,
              text: ' QR พร้อมเพย์',
            ),
            const SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Appcolor.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'แอปธนาคาร',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Appcolor.black,
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.account_balance, color: Colors.blue),
                      SizedBox(width: 10),
                      Text('ธนาคารกรุงเทพ'),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.account_balance, color: Colors.green),
                      SizedBox(width: 10),
                      Text('ธนาคารกสิกรไทย'),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey[300],
                  ),
                  const Row(
                    children: [
                      Icon(Icons.account_balance, color: Colors.red),
                      SizedBox(width: 10),
                      Text('ธนาคารไทยพาณิชย์'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
    );
  }

  // ฟังก์ชันสร้าง Widget สำหรับแต่ละวิธีชำระเงิน
  Widget _buildPaymentOption({required IconData icon, required String text}) {
    return Container(
      height: 55,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Appcolor.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Appcolor.grey),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
