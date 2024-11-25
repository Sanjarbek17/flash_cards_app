import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flash_cards_app/core/extension/text_theme_extension.dart';
import 'package:flash_cards_app/core/theme/custom_colors.dart';
import 'package:flash_cards_app/presentation/widgets/carousel_item_widget.dart';
import 'package:flutter/material.dart';

class FlashcardScreen extends StatelessWidget {
  final String title;
  const FlashcardScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: CustomColors.textColorBlue),
        title: Text(title, style: context.cardTitleTextStyle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 20),
          // const Spacer(),
          CarouselSlider(
            options: CarouselOptions(
              height: 330.0,
              aspectRatio: 0.5,
              clipBehavior: Clip.none,
              // enlargeFactor: 0.5,
              enlargeCenterPage: true,
              viewportFraction: 0.75,
              // padEnds: false,
            ),
            items: const [
              CarouselItemWidget(),
            ],
          ),
          const Spacer(),
          const Text('5 / 15'),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              const Row(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                height: 10,
                width: context.width,
                decoration: BoxDecoration(
                  color: CustomColors.primaryColor.withOpacity(0.5),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                height: 10,
                // TODO: This is a temporary solution.
                // It should be calculated based on the current index of the carousel.
                width: (context.width - 100) * 0.5,
                decoration: const BoxDecoration(
                  color: CustomColors.primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
