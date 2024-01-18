import 'package:flutter/material.dart';
import 'package:testappp/Components/custom_text.dart';
import 'custom_box.dart';

class HalfBlock extends StatelessWidget {
  final String title;
  final String image;
  final double left;
  final double top;
  final double? imageHeight;
  void Function()? onTap;
  HalfBlock({super.key, required this.title, required this.image, required this.left, required this.top, this.imageHeight, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
          onTap: onTap,
          child: SizedBox(
          child: Stack(
            children: [
              CustomBox(
                height: 212,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(bottom: 25),
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(top: 15),
                child:CustomText(text: title,),
              ),
            Positioned(
              top: top,
               left:left,
               right:0,
                  bottom: 30,
                  child: Image.asset(image, height: imageHeight ?? 280, fit: BoxFit.fitHeight,))
            ],
          ),
        ),
      ),
    );
  }
}
