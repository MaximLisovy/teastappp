import 'package:flutter/material.dart';
import 'package:testappp/Components/gift_card.dart';
import 'package:testappp/models/gift_model.dart';
import '../Components/custom_appbar.dart';
import '../generated/assets.dart';

class GiftsScreen extends StatelessWidget {
 GiftsScreen({super.key});
 final List<GiftModel> items = [
    GiftModel("APPLE", "500g", Assets.imagesApple),
    GiftModel("PINEAPPLE", "500g", Assets.imagesPineapple),
    GiftModel("PEAR", "500g", Assets.imagesPear),
    GiftModel("BANANA", "500g", Assets.imagesBanana),
  ];


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF685DED),
                Color(0xFF5562C5),
                Color(0xFF4856CF),
              ],
            )
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              const CustomAppbar(title: "GIFTS"),
              const SizedBox(height: 20,),
              Expanded(
                child: Wrap(
                  spacing: 15,
                  direction: Axis.horizontal,
                  children: items.map((i) => GiftCard(model: i)).toList(),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
