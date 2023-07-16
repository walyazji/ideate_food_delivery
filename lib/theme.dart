import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension ContextHelper on BuildContext {
  get headingStyleBlack => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.w900),
      );
  get headingStyleOrange => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Color(0xFFFF6838),
            fontSize: 24,
            fontWeight: FontWeight.w900),
      );
  get headingStyleWhite => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      );
  get subHeadingStyleOrange => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Color(0xFFFF6838),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      );
  get subHeadingStyleWhite => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      );
  get titleStyleOrange => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Color(0xFFFF6838),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      );
  get titleStyleWhite => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      );
  get subTitleStyleOrange => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Color(0xFFFF6838),
            fontSize: 16,
            fontWeight: FontWeight.w500),
      );
  get subTitleStyleWhite => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
      );
  get subTitleStyleGrey => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),
      );
}
