import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? height;
  final double? width;
  final Alignment? alignment;
  const CustomBox({super.key, required this.child, this.padding, this.margin, this.height, this.width, this.alignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      alignment: alignment,
      decoration:  BoxDecoration(
          gradient:const RadialGradient(
            colors: [
        Color(0xFF343E8C),
        Color(0xFF343E8C),
        Color(0xFF3F49A3),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 33.20,
              offset: Offset(0, 29),
              spreadRadius: -25,
            )
          ],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF050B3D), width: 1 )
      ),
      child: child,
    );
  }
}
