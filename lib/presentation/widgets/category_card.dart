import 'package:flash_cards_app/core/extension/text_theme_extension.dart';
import 'package:flash_cards_app/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Widget icon;
  final String title;
  const CategoryCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 7,
            spreadRadius: 2,
            offset: Offset(2, 4),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          icon,
          const SizedBox(height: 10),
          Text(title, style: context.categoryTextStyle),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
