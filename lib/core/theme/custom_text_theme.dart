import 'package:flash_cards_app/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomTextTheme {
  static const headline1 = TextStyle(
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  );

  static const appBarTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static const searchTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: CustomColors.textColorBlue,
  );
  static const searchSubTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: CustomColors.textColorBlue,
  );
  static const cardTitleTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: CustomColors.textColorBlue,
  );
  static const textButtonTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: CustomColors.white,
  );
  static const categoryTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: CustomColors.primaryColor,
  );
}
