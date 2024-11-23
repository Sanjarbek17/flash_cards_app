import 'package:flash_cards_app/core/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

extension TextThemeExtension on BuildContext {
  TextStyle get headline1 => CustomTextTheme.headline1;

  TextStyle get appBarTextStyle => CustomTextTheme.appBarTextStyle;
  TextStyle get searchTextStyle => CustomTextTheme.searchTextStyle;
  TextStyle get searchSubTextStyle => CustomTextTheme.searchSubTextStyle;
  TextStyle get cardTitleTextStyle => CustomTextTheme.cardTitleTextStyle;
  TextStyle get textButtonTextStyle => CustomTextTheme.textButtonTextStyle;
  TextStyle get categoryTextStyle => CustomTextTheme.categoryTextStyle;
}
