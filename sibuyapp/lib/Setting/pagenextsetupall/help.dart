import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart'; // นำเข้า CustomAppBar

class HelpCenterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ศูนย์ช่วยเหลือ',
      ),
      backgroundColor: Colors.white, // พื้นหลังเป็นสีขาว
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Theme(
          data: ThemeData(
            dividerColor:
                Colors.transparent, // ทำให้เส้นขีดระหว่าง ExpansionTile หายไป
          ),
          child: ListView(
            children: [
              _buildFAQItem(
                question: 'การสมัครสมาชิกและล็อกอิน',
                answer:
                    'คุณสามารถสมัครสมาชิกโดยการกดปุ่ม "สมัครสมาชิก" บนหน้าแรกและกรอกข้อมูลที่จำเป็น เช่น อีเมล, รหัสผ่าน, และข้อมูลส่วนตัวอื่นๆ เมื่อลงทะเบียนเสร็จสิ้น คุณสามารถล็อกอินได้โดยการใช้ชื่อผู้ใช้และรหัสผ่านที่ลงทะเบียนไว้',
              ),
              _buildFAQItem(
                question: 'การซื้อสินค้า',
                answer:
                    'เมื่อล็อกอินเข้าสู่ระบบแล้ว คุณสามารถเรียกดูสินค้าในแคตตาล็อก, เลือกสินค้าที่ต้องการ, เพิ่มลงในตะกร้า และดำเนินการชำระเงินตามขั้นตอนที่ระบุในแอป',
              ),
              _buildFAQItem(
                question: 'การเป็นผู้ขาย',
                answer:
                    'หากต้องการขายสินค้าผ่านแอป คุณต้องสมัครเป็นผู้ขายโดยการไปที่หน้าการตั้งค่าร้านค้าออนไลน์ในแอปและกรอกข้อมูลที่จำเป็น เช่น ชื่อร้านค้า, ข้อมูลติดต่อ, และรายละเอียดสินค้า',
              ),
              _buildFAQItem(
                question: 'การจัดการร้านค้า',
                answer:
                    'หลังจากที่คุณได้เปิดร้านค้าออนไลน์แล้ว คุณสามารถจัดการสินค้าภายในร้านได้โดยการไปที่หน้าจัดการร้านค้า เลือกตัวเลือกการเพิ่มหรือการลบสินค้า และกรอกรายละเอียดตามต้องการ',
              ),
              _buildFAQItem(
                question: 'การปิดบัญชีผู้ใช้',
                answer:
                    'หากคุณต้องการปิดบัญชีผู้ใช้ของคุณ สามารถทำได้โดยไปที่หน้าการตั้งค่าบัญชีและเลือกตัวเลือก "ปิดบัญชี" จากนั้นทำตามขั้นตอนที่ระบุ',
              ),
              _buildFAQItem(
                question: 'การติดต่อฝ่ายสนับสนุน',
                answer:
                    'หากคุณต้องการความช่วยเหลือเพิ่มเติมหรือพบปัญหาใดๆ คุณสามารถติดต่อฝ่ายสนับสนุนได้ที่อีเมล support@example.com หรือโทร 123-456-7890',
              ),
              _buildFAQItem(
                question: 'การรีเซ็ตรหัสผ่าน',
                answer:
                    'คุณสามารถรีเซ็ตรหัสผ่านได้โดยการไปที่หน้า "ลืมรหัสผ่าน" บนหน้าล็อกอินและทำตามคำแนะนำที่ส่งไปยังอีเมลที่ลงทะเบียน',
              ),
              _buildFAQItem(
                question: 'การเปลี่ยนภาษาในแอป',
                answer:
                    'ไปที่หน้าการตั้งค่าในแอปและเลือก "เปลี่ยนภาษา" เพื่อเลือกภาษาที่คุณต้องการใช้งาน',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFAQItem({required String question, required String answer}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 3.0, // ให้เงาแก่การ์ด
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0), // ทำมุมของการ์ดให้โค้งมน
        side: BorderSide.none, // ไม่มีเส้นขอบ
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
        backgroundColor: Colors.white, // เปลี่ยนสีพื้นหลังของ ExpansionTile
        collapsedBackgroundColor:
            Colors.white, // เปลี่ยนสีพื้นหลังของ ExpansionTile เมื่อลดลง
        title: Text(
          question,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              answer,
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
