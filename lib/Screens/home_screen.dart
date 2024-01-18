import 'package:flutter/material.dart';
import 'package:testappp/Components/custom_button.dart';
import 'package:testappp/Components/double_background.dart';
import 'package:testappp/Components/half_block.dart';
import 'package:testappp/Components/tiger_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DoubleBackground(
        firstImage: "assets/images/BG.png",
        secondImage: "assets/images/Overlap.png",
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          child:  SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const TigerHeader(),
                    Row(
                      children: [
                        HalfBlock(
                          onTap: () => Navigator.pushNamed(context, "promos"),
                          title: "PROMOS",
                          image: 'assets/images/Gold.png',
                          top: -32,
                          left: 0,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        HalfBlock(
                          onTap: () => Navigator.pushNamed(context, "gifts"),
                          title: "GIFTS",
                          image: 'assets/images/Gift1.png',
                          top: -55,
                          left: -30,
                          imageHeight: 300,
                        ),
                      ],
                    ),
                  ],
                ),
                const CustomButton(
                  title: "ABOUT US",
                  height: 66,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  bottomLine: 5,
                ),
              ],
            ),
          ),
        ));
  }
}
