import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension ContextHelper on BuildContext {
  get orange => const Color(0xFFFF6838);
  get headingStyleBlack => GoogleFonts.tajawal(
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 27,
          fontWeight: FontWeight.w900,
        ),
      );
  get headingStyleOrange => GoogleFonts.tajawal(
        textStyle:
            TextStyle(color: orange, fontSize: 27, fontWeight: FontWeight.w900),
      );
  get headingStyleWhite => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
      );
  get subHeadingStyleOrange => GoogleFonts.tajawal(
        textStyle:
            TextStyle(color: orange, fontSize: 20, fontWeight: FontWeight.bold),
      );
  get subHeadingStyleWhite => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      );
  get subHeadingStyleBlack => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      );
  get titleStyleOrange => GoogleFonts.tajawal(
        textStyle:
            TextStyle(color: orange, fontSize: 18, fontWeight: FontWeight.bold),
      );
  get titleStyleWhite => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      );
  get subTitleStyleOrange => GoogleFonts.tajawal(
        textStyle:
            TextStyle(color: orange, fontSize: 16, fontWeight: FontWeight.w500),
      );
  get subTitleStyleWhite => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
      );
  get subTitleStyleGrey => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 171, 170, 170),
            fontSize: 20,
            fontWeight: FontWeight.w500),
      );
  get titleStyleGrey => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 171, 170, 170),
            fontSize: 16,
            fontWeight: FontWeight.w500),
      );
  get subTitleStyleBlack => GoogleFonts.tajawal(
        textStyle: const TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      );
}
