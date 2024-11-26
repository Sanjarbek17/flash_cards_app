import 'package:flash_cards_app/presentation/pages/account_screen.dart';
import 'package:flash_cards_app/presentation/pages/add_screen.dart';
import 'package:flash_cards_app/presentation/pages/app_view.dart';
import 'package:flash_cards_app/presentation/pages/flashcard_screen.dart';
import 'package:flash_cards_app/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppView.routeName:
        return MaterialPageRoute(builder: (_) => const AppView());
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AccountScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AccountScreen());
      case FlashcardScreen.routeName:
        return MaterialPageRoute(builder: (_) {
          if (settings.arguments is String) {
            final title = settings.arguments as String;
            return FlashcardScreen(title: title);
          }
          return const FlashcardScreen(title: 'Flashcards Screen');
        });
      case AddScreen.routeName:
        return MaterialPageRoute(builder: (_) => const AddScreen());
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
