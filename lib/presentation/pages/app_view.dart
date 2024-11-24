import 'package:flash_cards_app/core/theme/custom_colors.dart';
import 'package:flash_cards_app/presentation/pages/account_screen.dart';
import 'package:flash_cards_app/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          HomeScreen(),
          AccountScreen(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: CustomColors.white,
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 30, offset: Offset(0, 1))],
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(shape: BoxShape.circle, color: CustomColors.primaryColor),
          child: const Icon(Icons.add, color: CustomColors.white, size: 40),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 100,
          decoration: const BoxDecoration(
            color: CustomColors.white,
            boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 30, offset: Offset(0, -1))],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                    _pageController.animateToPage(
                      _currentIndex,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  });
                },
                icon: const Icon(Icons.home_outlined, color: CustomColors.primaryColor, size: 55),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                    _pageController.animateToPage(
                      _currentIndex,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  });
                },
                icon: const Icon(Icons.account_circle_outlined, color: CustomColors.primaryColor, size: 55),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
