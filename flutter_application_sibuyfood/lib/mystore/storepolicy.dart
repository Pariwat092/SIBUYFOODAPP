import 'package:flutter/material.dart';

import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';
import 'package:sibuyapp/classallapp/styleText.dart';
import 'package:sibuyapp/mystore/registerstore.dart';

class StorePolicyPage extends StatefulWidget {
  @override
  _StorePolicyPageState createState() => _StorePolicyPageState();
}

class _StorePolicyPageState extends State<StorePolicyPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: CustomAppBar(
        title: 'นโยบายสำหรับร้านค้า',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'นโยบายความเป็นส่วนตัว (Privacy Policy)',
              style: AppFonts.ticontent,
            ),
            const SizedBox(height: 16),
            const Text(
              '1. ข้อมูลที่เรารวบรวม: เราจะรวบรวมข้อมูลส่วนบุคคลของคุณที่ให้มาในขณะที่สมัครใช้งานแอปของเรา ซึ่งรวมถึง:\n'
              '- ชื่อ\n'
              '- ที่อยู่\n'
              '- อีเมล\n'
              '- เบอร์โทรศัพท์\n\n'
              '2. การใช้ข้อมูล: ข้อมูลที่รวบรวมจะถูกใช้ตามวัตถุประสงค์ดังนี้:\n'
              '- ที่อยู่: ใช้สำหรับการจัดส่งสินค้าให้ถึงมือคุณ\n'
              '- เบอร์โทรศัพท์: ใช้สำหรับการติดต่อและบริการลูกค้า\n'
              '- อีเมล: ใช้สำหรับการสื่อสารและการส่งข้อมูลที่เกี่ยวข้อง\n\n'
              '3. การปกป้องข้อมูล: เรามีมาตรการป้องกันข้อมูลส่วนบุคคลที่รวบรวมมา โดยการใช้การเข้ารหัสข้อมูลและการรักษาความปลอดภัยของบัญชีผู้ใช้ผ่านการกรอกรหัสผ่าน\n\n'
              '4. การติดต่อ: หากคุณมีข้อสงสัยเกี่ยวกับนโยบายความเป็นส่วนตัวนี้ หรือการจัดการข้อมูลของคุณ, คุณสามารถติดต่อเราผ่านทาง [ข้อมูลการติดต่อ] ได้',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              'นโยบายการคืนสินค้าและการคืนเงิน (Return and Refund Policy)',
              style: AppFonts.ticontent,
            ),
            const SizedBox(height: 16),
            const Text(
              '1. การคืนสินค้า: เนื่องจากสินค้าในแอปของเราส่วนใหญ่เป็นสินค้าอาการของกิน, เราจึงไม่สามารถรับคืนสินค้าในกรณีใดๆ\n\n'
              '2. การคืนเงิน: การคืนเงินไม่สามารถดำเนินการได้ เนื่องจากนโยบายการคืนสินค้าของเราคือไม่รับคืนสินค้า\n\n'
              '3. การใช้บริการ: บริการของเราเป็นบริการฟรีสำหรับการใช้ในพื้นที่เริ่มต้น และเป็นแพลตฟอร์มสำหรับประชาสัมพันธ์ร้านค้า',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'ข้อกำหนดและเงื่อนไข (Terms and Conditions)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              '1. การใช้บริการ: การใช้บริการของเราคือการสมัครผ่านแอปของเราและการใช้ฟังก์ชันต่างๆ ที่เรามีให้\n\n'
              '2. การซื้อขาย: การซื้อขายและการจัดส่งสินค้าจะเป็นไปตามการจัดการของร้านค้าแต่ละแห่ง\n\n'
              '3. สิทธิและความรับผิดชอบ: คุณตกลงที่จะปฏิบัติตามข้อกำหนดและเงื่อนไขที่เรากำหนดไว้และยอมรับข้อกำหนดในการใช้บริการ',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  activeColor: Colors.black,
                  checkColor: Colors.white,
                ),
                const Expanded(
                  child: Text('ฉันยอมรับข้อกำหนดและนโยบาย'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _isChecked ? _accept : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Appcolor.black, // สีพื้นหลังของปุ่ม
                foregroundColor: Colors.white, // สีข้อความ
              ),
              child: const Text('ตกลง'),
            ),
          ],
        ),
      ),
    );
  }

  void _accept() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Registerstore()),
    );
  }
}
