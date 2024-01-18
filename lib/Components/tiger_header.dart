import 'package:flutter/material.dart';
import 'package:testappp/Components/custom_button.dart';
import 'package:testappp/Components/custom_text.dart';

import 'custom_box.dart';

class TigerHeader extends StatefulWidget {
  const TigerHeader({super.key});

  @override
  State<TigerHeader> createState() => _TigerHeaderState();
}

class _TigerHeaderState extends State<TigerHeader> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "balance"),
      child: SizedBox(
        height: 223,
        child: Stack(
          children: [
            CustomBox(
              padding: const EdgeInsets.all(7.5),
              child: Row(
                children: [
                  smallqr(),
                  const SizedBox(width: 15,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "BONUS CARD", fontSize: 24,),
                      CustomText(text: "2000.00", fontSize: 18,),
                    ],
                  )
                ],
              )
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset("assets/images/Tiger.png", width: 240,))
          ],
        ),
      ),
    );
  }
}

Widget smallqr(){
  return Container(
    width: 146,
    padding: const EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: const Color(0xFFFFFFFF).withOpacity(0.12),
borderRadius: BorderRadius.circular(15)
    ),
    child: Column(
      children: [
        Image.asset("assets/images/QR.png", height: 134,width: 134,),
        const SizedBox(height: 15,),
        const CustomButton(title: "SHOW QR", fontSize: 18,height: 43,)
      ],
    ) ,
  );
}
