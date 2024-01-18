import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testappp/Components/custom_text.dart';
import 'package:testappp/models/promo_model.dart';

class PromoCard extends StatelessWidget {
  final PromoModel model;
  const PromoCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 243,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(model.background), fit:BoxFit.fill ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
              child: ClipRRect(
                borderRadius:  const BorderRadius.only(
                    topLeft: Radius.circular(20.0),),
                child: SizedBox(
                  width: 210,
                  height: 60,
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10,),
                      child: Container(
                        color: Colors.white.withOpacity(0.001),
                      )
                  ),
                ),
              ),
          ),
          Positioned(
              top: 15,
              left: 15,
              child: CustomText(text: model.title,)),
          Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(model.foreground, height: 240,)),
        ],
      ),
    );
  }
}
