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
  TextStyle get categoryTitleTextStyle => CustomTextTheme.categoryTitleTextStyle;
  TextStyle get flashTextStyle => CustomTextTheme.flashTextStyle;
  TextStyle get flashSubTextStyle => CustomTextTheme.flashSubTextStyle;
  TextStyle get accountTextStyle => CustomTextTheme.accountTextStyle;
  TextStyle get accountSubTextStyle => CustomTextTheme.accountSubTextStyle;
  TextStyle get accountBodyTextStyle => CustomTextTheme.accountBodyTextStyle;
  TextStyle get accountBodySubTextStyle => CustomTextTheme.accountBodySubTextStyle;
}
