import 'package:flutter/material.dart';

class DoubleBackground extends StatelessWidget {
  final Widget child;
  final String firstImage;
  final String secondImage;
  const DoubleBackground(
      {super.key,
      required this.child,
      required this.firstImage,
      required this.secondImage});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(firstImage), fit: BoxFit.cover)),
      ),
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(secondImage), fit: BoxFit.cover))),
      child
    ]));
  }
}
