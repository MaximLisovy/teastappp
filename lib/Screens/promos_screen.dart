import 'package:flutter/material.dart';
import 'package:testappp/Components/custom_appbar.dart';
import 'package:testappp/Components/promo_card.dart';
import '../generated/assets.dart';
import '../models/promo_model.dart';

class PromosScreen extends StatefulWidget {
  const PromosScreen({super.key});

  @override
  State<PromosScreen> createState() => _PromosScreenState();
}

class _PromosScreenState extends State<PromosScreen> {
  List<PromoModel> items = [
    PromoModel("Welcome bonus", Assets.imagesBGcard1, Assets.imagesPanda),
    PromoModel("Cash-back", Assets.imagesBGcard2, Assets.imagesMonkey),
    PromoModel("Loyalty card", Assets.imagesBGcard3, Assets.imagesTigerCard),
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
              const CustomAppbar(title: "PROMOS"),
              const SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return PromoCard(model: items[index]);
                  },
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}
