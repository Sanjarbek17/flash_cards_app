
import 'package:flash_cards_app/core/extension/text_theme_extension.dart';
import 'package:flash_cards_app/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class FlashWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  const FlashWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: CustomColors.primaryColor,
          size: 30,
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: context.flashTextStyle),
            Text(subTitle, style: context.flashSubTextStyle),
          ],
        ),
        const Expanded(
          child: VerticalDivider(
            color: Colors.red,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
