import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:anime_world_tutorial/models/anime_category.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoriesScreenBar extends StatelessWidget {
  const CategoriesScreenBar({
    super.key,
    required this.colors,
    required this.currentIndex,
    required this.onTapCategory,
  });

  final List<Color?> colors;
  final int currentIndex;
  final ValueChanged<int> onTapCategory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 9,
        separatorBuilder: (context, index) => const Gap(5),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onTapCategory(index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: colors[index % colors.length],
              ),
              child: Center(
                child: Text(
                  animeCategories[index].title,
                  style: TextStyles.styles15.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
