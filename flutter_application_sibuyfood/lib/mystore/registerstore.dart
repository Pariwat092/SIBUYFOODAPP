import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';
import 'package:sibuyapp/mystore/homestore.dart';

class Registerstore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ลงทะเบียนร้านค้า',
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField('ชื่อร้าน', 'กรุณากรอกชื่อร้าน'),
            _buildImagePlaceholder(),
            _buildTextField('ตำแหน่งร้าน', 'กรุณากรอกตำแหน่งร้าน'),
            _buildTextField('ชื่อเจ้าของร้าน', 'กรุณากรอกชื่อเจ้าของร้าน'),
            _buildTextField(
              'เบอร์โทรติดต่อร้าน',
              'กรุณากรอกเบอร์โทรติดต่อร้าน',
              keyboardType: TextInputType.phone,
            ),
            _buildDropdownButton(),
            _buildTextField('เลขบัญชี', 'กรุณากรอกเลขบัญชี'),
            _buildTextField('ชื่อบัญชี', 'กรุณากรอกชื่อบัญชี'),
            _buildDeliveryOption(),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homestore()),
                );
              },
              child: Text(
                'สมัครร้านค้า',
                style: TextStyle(fontSize: 12),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                minimumSize: Size(120, 40),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint,
      {TextInputType keyboardType = TextInputType.text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        TextField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: const Color.fromARGB(
                      255, 255, 255, 255)!), // สีของกรอบปกติ
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: const Color.fromARGB(
                      255, 255, 255, 255), // สีของกรอบเมื่อมีโฟกัส
                  width: 2.0),
            ),
            hintText: hint,
            filled: true,
            fillColor: Colors.grey[100],
            hintStyle: TextStyle(color: Colors.grey[600]),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildImagePlaceholder() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'เพิ่มรูปร้าน',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Center(
            child: Text(
              'รูปภาพร้านค้า',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildDropdownButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'เลือกประเภทของร้าน',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        DropdownButtonFormField<String>(
          isExpanded: true,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            filled: true,
            fillColor: Colors.grey[100],
          ),
          items: [
            DropdownMenuItem(
              child: Text('ร้านสรรพสินค้า'),
              value: 'department_store',
            ),
            DropdownMenuItem(
              child: Text('รถพ่วงข้าง'),
              value: 'sidecar',
            ),
          ],
          onChanged: (value) {
            // Handle selection
          },
          hint: Text('กรุณาเลือกประเภทของร้าน'),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildDeliveryOption() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'มีคนส่งของหรือไม่',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Radio(
                    value: true,
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                  Text('มีคนส่งของ'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Radio(
                    value: false,
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                  Text('ไม่มีคนส่งของ'),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
