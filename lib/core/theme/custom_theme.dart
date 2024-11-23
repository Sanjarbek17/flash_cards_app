import 'package:flash_cards_app/core/theme/custom_colors.dart';
import 'package:flash_cards_app/core/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  colorScheme: colorTheme,
  appBarTheme: const AppBarTheme(
    backgroundColor: CustomColors.primaryColor,
    titleTextStyle: CustomTextTheme.appBarTextStyle,
  ),
);

final colorTheme = ColorScheme.fromSwatch(
  primarySwatch: MaterialColor(CustomColors.primaryColor.value, {
    50: CustomColors.primaryColor.withOpacity(0.1),
    100: CustomColors.primaryColor.withOpacity(0.2),
    200: CustomColors.primaryColor.withOpacity(0.3),
    300: CustomColors.primaryColor.withOpacity(0.4),
    400: CustomColors.primaryColor.withOpacity(0.5),
    500: CustomColors.primaryColor.withOpacity(0.6),
    600: CustomColors.primaryColor.withOpacity(0.7),
    700: CustomColors.primaryColor.withOpacity(0.8),
    800: CustomColors.primaryColor.withOpacity(0.9),
    900: CustomColors.primaryColor,
  }),
);

final darkTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.dark,
);
