import 'package:flutter/material.dart';
import 'package:sibuyapp/Home/producttoday.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/styleText.dart';
import 'package:sibuyapp/classallapp/textfromfield.dart';

class Seaechporduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          width: 370,
          child: CustomTextFormField(
              hintText: 'ค้นหา',
              prefixIcon: Icons.search,
              textStyle: AppFonts.ticontentsmell),
        ),
        backgroundColor: Appcolor.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(child: Container(child: ProductToday())),
          ],
        ),
      ),
      backgroundColor: Appcolor.white,
    );
  }
}
