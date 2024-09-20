import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart'; // นำเข้า CustomAppBar

class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  Locale _selectedLocale = Locale('en', ''); // ค่าเริ่มต้นคือภาษาอังกฤษ

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'เลือกภาษา',
      ),
      backgroundColor: Colors.white, // พื้นหลังเป็นสีขาว
      body: ListView(
        children: [
          _buildLanguageOption(
            locale: Locale('en', ''),
            title: 'English',
          ),
          _buildLanguageOption(
            locale: Locale('th', ''),
            title: 'ไทย',
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageOption({required Locale locale, required String title}) {
    return ListTile(
      title: Text(title),
      trailing: _selectedLocale == locale
          ? Icon(Icons.check, color: Colors.green)
          : null,
      onTap: () {
        setState(() {
          _selectedLocale = locale;
          // บันทึกการเลือกภาษา (ในสถานการณ์จริงอาจจะต้องใช้ SharedPreferences หรือการจัดการสถานะอื่นๆ)
        });
      },
    );
  }
}
