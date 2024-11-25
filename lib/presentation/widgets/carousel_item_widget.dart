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
  String text = 'Obvio';

  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _controller.addListener(() {
      if (_controller.value > 0.5) {
        setState(() {
          text = 'Anki';
          isFlipped = true;
        });
      } else {
        setState(() {
          text = 'Obvio';
          isFlipped = false;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!isFlipped) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(math.pi * _controller.value),
            alignment: Alignment.center,
            child: child,
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: const BoxDecoration(
            color: CustomColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Center(
            child: Transform.flip(
              flipX: isFlipped,
              child: Text(
                text,
                style: context.categoryTitleTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
