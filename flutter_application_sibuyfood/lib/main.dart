import 'package:flutter/material.dart';
import 'package:sibuyapp/Home/Listporduct/stoepopularall.dart';
import 'package:sibuyapp/Home/stroepopular.dart';

import 'package:sibuyapp/Home/view_producys.dart';
import 'package:sibuyapp/Myproduct/payment.dart';

import 'package:sibuyapp/StartApp/firstlogin.dart';
import 'package:flutter/services.dart';
import 'package:sibuyapp/Home/home1.dart';
import 'package:sibuyapp/Myproduct/product_list.dart';
import 'package:sibuyapp/StartApp/register.dart';
import 'package:sibuyapp/Setting/set_up.dart';
import 'package:sibuyapp/mystore/homestore.dart';

import 'package:sibuyapp/mystore/firststore.dart';
import 'package:sibuyapp/mystore/registerstore.dart';

import 'Navigation_Ber/bottomnavigationber.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Firstlogin(),
    );
  }
}
