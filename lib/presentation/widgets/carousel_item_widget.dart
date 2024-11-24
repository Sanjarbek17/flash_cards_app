import 'package:flash_cards_app/core/extension/text_theme_extension.dart';
import 'package:flash_cards_app/core/theme/custom_colors.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class CarouselItemWidget extends StatefulWidget {
  const CarouselItemWidget({
    super.key,
  });

  @override
  State<CarouselItemWidget> createState() => _CarouselItemWidgetState();
}

class _CarouselItemWidgetState extends State<CarouselItemWidget> with TickerProviderStateMixin {
  bool isFlipped = false;

  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (isFlipped)
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, 400 * _controller.value),
                child: child,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 240,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(
                color: CustomColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(
                child: Text(
                  'Obvio',
                  style: context.categoryTitleTextStyle,
                ),
              ),
            ),
          ),
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 300,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: const BoxDecoration(
            color: CustomColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Center(
            child: Text(
              'Obvio',
              style: context.categoryTitleTextStyle,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: () {
              isFlipped ? _controller.reverse() : _controller.forward();
              setState(() {
                isFlipped = !isFlipped;
              });
            },
            splashColor: Colors.transparent,
            child: Container(
              width: 65,
              height: 65,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 7,
                    spreadRadius: 2,
                    offset: Offset(2, 4),
                  )
                ],
              ),
              child: Transform.flip(
                flipY: isFlipped,
                child: Transform.rotate(
                  angle: -math.pi / 2,
                  child: const Icon(
                    Icons.arrow_back_ios_outlined,
                    color: CustomColors.primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
