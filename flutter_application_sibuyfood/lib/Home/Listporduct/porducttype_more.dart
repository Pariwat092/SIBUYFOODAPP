import 'package:flutter/material.dart';
import 'package:sibuyapp/Home/producttoday.dart';
import 'package:sibuyapp/classallapp/costomappbar.dart';

class PorducttypeMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'ของหวาน'),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ProductToday(),
      )),
    );
  }
}
