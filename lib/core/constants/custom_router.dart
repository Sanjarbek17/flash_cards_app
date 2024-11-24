import 'package:flash_cards_app/presentation/pages/account_screen.dart';
import 'package:flash_cards_app/presentation/pages/app_view.dart';
import 'package:flash_cards_app/presentation/pages/flashcard_screen.dart';
import 'package:flash_cards_app/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class CustomRouter {
  static const String appView = '/';
  static const String home = '/home';
  static const String about = '/about';
  static const String flashcard = '/flashcard';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case appView:
        return MaterialPageRoute(builder: (_) => const AppView());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case about:
        return MaterialPageRoute(builder: (_) => const AccountScreen());
      case flashcard:
        return MaterialPageRoute(builder: (_) {
          if (settings.arguments is String) {
            final title = settings.arguments as String;
            return FlashcardScreen(title: title);
          }
          return const FlashcardScreen(title: 'Flashcards Screen');
        });
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
