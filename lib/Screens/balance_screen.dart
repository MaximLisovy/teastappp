import 'package:flutter/material.dart';
import 'package:testappp/Components/custom_appbar.dart';
import 'package:testappp/Components/custom_text.dart';
import 'package:testappp/Components/double_background.dart';
import 'package:testappp/generated/assets.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DoubleBackground(
      firstImage: Assets.imagesBalancebg,
      secondImage: Assets.imagesBalanceOverlap,
      child: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Image.asset(
                  Assets.imagesBgTiger,
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                )),
            Column(
              children: [
                const CustomAppbar(title: "BALANCE"),
                const SizedBox(height: 20,),
                const CustomText(text: "2000.00", fontSize: 48,),
                const SizedBox(height: 15,),
                Image.asset(Assets.imagesQR, width: MediaQuery.of(context).size.width*0.65),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
