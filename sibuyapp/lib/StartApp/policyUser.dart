import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class CustomerPolicyPage extends StatefulWidget {
  @override
  _CustomerPolicyPageState createState() => _CustomerPolicyPageState();
}

class _CustomerPolicyPageState extends State<CustomerPolicyPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      appBar: CustomAppBar(
        title: 'นโยบายสำหรับผู้ใช้',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'นโยบายความเป็นส่วนตัว (Privacy Policy)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
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
            const Text(
              'นโยบายการคืนสินค้าและการคืนเงิน (Return and Refund Policy)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              'นโยบายการจัดส่ง (Shipping Policy)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              '1. การจัดส่ง: การจัดส่งจะดำเนินการโดยร้านค้า และร้านค้าที่ไม่มีบริการจัดส่งสามารถลงทะเบียนเพื่อใช้พื้นที่ประชาสัมพันธ์\n\n'
              '2. ระยะเวลาในการจัดส่ง: ระยะเวลาในการจัดส่งไม่ควรเกิน 1 ชั่วโมงจากเวลาที่ได้รับคำสั่งซื้อ\n\n'
              '3. ขั้นตอนการติดตาม: สถานะการจัดส่งจะมีการอัพเดตเป็น:\n'
              '- กำลังจัดส่ง\n'
              '- ส่งสำเร็จ',
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
                ),
                const Expanded(
                  child: Text('ฉันยอมรับข้อกำหนดและนโยบาย'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _isChecked ? _accept : null,
              child: Text('ตกลง'),
            ),
          ],
        ),
      ),
    );
  }

  void _accept() {
    // Navigate to the next page or perform an action
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NextPage()),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('หน้าถัดไป')),
      body: const Center(child: Text('คุณได้ยอมรับนโยบายแล้ว')),
    );
  }
}
