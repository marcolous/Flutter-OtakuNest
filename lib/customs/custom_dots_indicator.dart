import 'package:anime_world_tutorial/screens/home_screen/top_animies_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.currentIndex,
    required this.widget,
  });

  final int currentIndex;
  final TopAnimiesSlider widget;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: widget.animes.length,
      effect: const ScrollingDotsEffect(
        activeStrokeWidth: 2.6,
        activeDotScale: 1.3,
        maxVisibleDots: 5,
        radius: 8,
        spacing: 10,
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: Colors.red,
      ),
    );
  }
}
