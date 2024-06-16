import 'package:anime_world_tutorial/customs/custom_dots_indicator.dart';
import 'package:anime_world_tutorial/models/anime.dart';
import 'package:anime_world_tutorial/screens/home_screen/top_anime_element.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TopAnimesSlider extends StatefulWidget {
  const TopAnimesSlider({super.key, required this.animes});
  final Iterable<Anime> animes;

  @override
  State<TopAnimesSlider> createState() => _TopAnimesSliderState();
}

class _TopAnimesSliderState extends State<TopAnimesSlider> {
  int currentIndex = 0;
  final CarouselController controller = CarouselController();
  final ValueNotifier<int> currentNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CarouselSlider.builder(
            carouselController: controller,
            itemCount: widget.animes.length,
            options: CarouselOptions(
              enlargeFactor: .22,
              aspectRatio: 16 / 9,
              viewportFraction: .88,
              autoPlay: true,
              enlargeCenterPage: true,
              initialPage: currentIndex,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                  currentNotifier.value = index;
                });
              },
            ),
            itemBuilder: (context, index, realIndex) {
              final anime = widget.animes.elementAt(index);
              return TopAnimeElement(anime: anime);
            },
          ),
          const Gap(20),
          CustomDotsIndicator(
            currentIndex: currentIndex,
            widget: widget,
          ),
        ],
      ),
    );
  }
}
