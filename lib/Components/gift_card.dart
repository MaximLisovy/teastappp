import 'package:flutter/material.dart';
import 'package:testappp/models/gift_model.dart';
import 'custom_box.dart';
import 'custom_text.dart';

class GiftCard extends StatelessWidget {
  final GiftModel model;
  final double? top;
  const GiftCard({super.key, required this.model, this.top});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomBox(
            height: 215,
            width: MediaQuery.of(context).size.width * 0.44,
            padding: const EdgeInsets.only(bottom: 15),
            margin: const EdgeInsets.only(top: 20),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(text: model.title,),
                CustomText(text: model.weight,),
              ],
            ),
          ),
          Positioned(
              top:model.title == "PINEAPPLE" ? -45 : -20,
              left:-5,
              right: 0,
              bottom: 70,
              child: Image.asset(model.image,))
        ],
      ),
    );
  }
}
