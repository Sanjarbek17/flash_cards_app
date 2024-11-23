import 'package:flash_cards_app/presentation/pages/account_screen.dart';
import 'package:flash_cards_app/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class CustomRouter {
  static const String home = '/';
  static const String about = '/about';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case about:
        return MaterialPageRoute(builder: (_) => const AccountScreen());
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
