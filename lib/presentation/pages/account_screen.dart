import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flash_cards_app/core/extension/text_theme_extension.dart';
import 'package:flash_cards_app/core/theme/custom_colors.dart';
import 'package:flash_cards_app/presentation/widgets/flash_widget.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        flexibleSpace: Container(
          height: 270,
          decoration: BoxDecoration(color: CustomColors.primaryColor, borderRadius: BorderRadius.circular(30)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 30, color: Colors.black),
              ),
              const SizedBox(height: 10),
              Text('Sanjar Saidov', style: context.accountTextStyle),
              Text('Samarkand, Uzbekistan', style: context.accountSubTextStyle),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 200),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  width: context.width,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(color: CustomColors.white, borderRadius: BorderRadius.circular(30), boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 8, spreadRadius: 0, offset: Offset(0, 5))]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Expanded(
                        child: FlashWidget(icon: Icons.flash_on, title: '37', subTitle: 'Flashcards Added'),
                      ),
                      Container(
                        width: 1,
                        height: 41,
                        color: CustomColors.primaryColor.withOpacity(0.5),
                      ),
                      const SizedBox(width: 20),
                      const Expanded(
                        child: FlashWidget(icon: Icons.schedule, title: '37', subTitle: 'Flashcards Added'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Text('6 hrs, 16 Mins', style: context.accountBodyTextStyle),
          Text('Today', style: context.accountBodySubTextStyle),
        ],
      ),
    );
  }
}
