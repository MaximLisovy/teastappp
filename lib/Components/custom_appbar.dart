import 'package:flutter/material.dart';
import 'package:testappp/Components/custom_text.dart';
import '../generated/assets.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  const CustomAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Image.asset(
                Assets.imagesBack,
                height: 28.33,
                width: 15.83,
              )), // обычно это svg, но чтобы ради одной иконки не подключать библиотеку для свг тут пнг
          CustomText(
            text: title,
          ),
          const SizedBox(
            width: 50, // размер IconButton
          ),
        ],
      ),
    );
  }
}
