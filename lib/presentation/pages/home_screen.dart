import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flash_cards_app/core/constants/custom_router.dart';
import 'package:flash_cards_app/core/extension/text_theme_extension.dart';
import 'package:flash_cards_app/core/theme/custom_colors.dart';
import 'package:flash_cards_app/gen/assets.gen.dart';
import 'package:flash_cards_app/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.black),
          ),
        ),
        title: const Text('Sanjar Saidov'),
        centerTitle: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        flexibleSpace: Container(
          height: 270,
          decoration: const BoxDecoration(
            color: CustomColors.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 220),
          child: Transform.translate(
            offset: const Offset(0, 40),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    width: context.width,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(color: CustomColors.white, borderRadius: BorderRadius.circular(30), boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 8, spreadRadius: 0, offset: Offset(0, 5))]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Search Flashcards', style: context.searchTextStyle),
                        const SizedBox(height: 10),
                        Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', style: context.searchSubTextStyle),
                        const SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Search here',
                            hintStyle: context.searchSubTextStyle,
                            prefixIconConstraints: const BoxConstraints(minHeight: 45, maxHeight: 50, minWidth: 45, maxWidth: 50),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                              child: SvgPicture.asset(
                                Assets.icons.search1,
                                colorFilter: const ColorFilter.mode(CustomColors.textColorBlue, BlendMode.srcIn),
                              ),
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: CustomColors.textColorBlue.withOpacity(0.5)), borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Flashcard Categories', style: context.cardTitleTextStyle),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: CustomColors.primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    'View All',
                    style: context.textButtonTextStyle,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 102 / 105,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: 6,
              itemBuilder: (context, index) => CategoryCard(
                icon: const Icon(Icons.calculate, color: CustomColors.primaryColor, size: 50),
                title: 'Mathematics',
                onTap: () {
                  Navigator.of(context).pushNamed(CustomRouter.flashcard);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
