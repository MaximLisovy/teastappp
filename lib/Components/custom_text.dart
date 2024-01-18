import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const CustomText({super.key, required this.text, this.fontSize, this.fontWeight, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text( text,
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.lilitaOne(
        fontSize: fontSize ?? 24,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: const Color(0xFFFFFFFF),
    ),);
  }
}
