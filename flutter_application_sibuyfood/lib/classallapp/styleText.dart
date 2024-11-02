// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sibuyapp/classallapp/colors.dart';

class AppFonts {
  // App bar ใช้เเล้ว
  static final TextStyle tiappbar = GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
  // หัวข้อใหญ่
  // static final TextStyle titopics = GoogleFonts.notoSans(
  //   textStyle: const TextStyle(
  //     fontSize: 20,
  //     fontWeight: FontWeight.normal,
  //     color: Appcolor.black,
  //   ),
  // );
  // หัวข้อใหญ่ย่อย ใช้เเล้ว
  static final TextStyle ticontent = GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
  // เนื้อหาหัวข้อ ขนาดปกติทั้วไป กำลังใช้
  static final TextStyle ticontent1 = GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
  );
  static final TextStyle ticontent2 = GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
  //ใช้กับตัวหนังสือที่เล็ก
  static final TextStyle ticontentsmell = GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color.fromARGB(255, 185, 185, 185),
    ),
  );

  static final TextStyle ticontentcenter = GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: Color.fromARGB(137, 209, 209, 209),
    ),
  );

  static final TextStyle ticontentbottom = GoogleFonts.notoSans(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
  );
}
