import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';
import 'package:sibuyapp/classallapp/styleText.dart';
import 'package:sibuyapp/mystore/storepolicy.dart';

class Mystore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 370,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/imopenstore.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Appcolor.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('ยินดีต้อนรับสู่โอกาสใหม่!',
                        textAlign: TextAlign.center, style: AppFonts.ticontent),
                    const SizedBox(height: 20),
                    Text(
                      '"เปิดร้านค้าออนไลน์ของคุณได้ง่ายๆ กับป้ายเหลือง สร้างธุรกิจในฝันของคุณวันนี้!"',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(179, 169, 169, 169),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text('พร้อมที่จะเป็นเจ้าของธุรกิจ?',
                        textAlign: TextAlign.center, style: AppFonts.ticontent),
                    const SizedBox(height: 10),
                    Text(
                      '"เข้าร่วมกับเราเพื่อเปิดร้านค้าออนไลน์ของคุณและเริ่มขายสินค้าได้ทันที!"',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(179, 153, 153, 153),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StorePolicyPage()),
                );
                print('Container ถูกกด');
              },
              splashColor: Colors.transparent, // ปิดสี splash
              highlightColor: Colors.transparent, // ปิดสี highlight
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 21, 21, 21),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'เปิดร้านค้าของคุณ',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
