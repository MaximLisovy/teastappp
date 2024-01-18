import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? fontSize;
  final double? height;
  final double? bottomLine;
  final EdgeInsetsGeometry? margin;
  const CustomButton({super.key, required this.title, this.fontSize, this.height, this.margin, this.bottomLine});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: MediaQuery.of(context).size.width,
      height: height,
      padding: EdgeInsets.only(bottom: bottomLine ?? 3),
      decoration: BoxDecoration(
        color: const Color(0xFF650000),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: const Color(0xFF400000))
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient:const RadialGradient(
            center: Alignment.topLeft,
            radius: 4,
            colors: [
              Color(0xFFFF0000),
              Color(0xFFAF0000),
            ],
          ),
        ),
        child:Text(title, style: GoogleFonts.lilitaOne(fontSize: fontSize ?? 24,color: const Color(0xFFFFFFFF),
            shadows: [
              const Shadow( // bottomLeft
                  offset: Offset(-1.5, -1.5),
                  color: Color(0xFF650000)
              ),
              const Shadow( // bottomRight
                  offset: Offset(1.5, -1.5),
                  color: Color(0xFF650000)
              ),
              const Shadow( // topRight
                  offset: Offset(1.5, 1.5),
                  color: Color(0xFF650000)
              ),
              const Shadow( // topLeft
                  offset: Offset(-1.5, 1.5),
                  color: Color(0xFF650000)
              )] )),
      ),
    );
  }
}
