import 'package:flash_cards_app/core/constants/custom_router.dart';
import 'package:flash_cards_app/core/theme/custom_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      onGenerateRoute: CustomRouter.generateRoute,
      initialRoute: CustomRouter.appView,
    );
  }
}
