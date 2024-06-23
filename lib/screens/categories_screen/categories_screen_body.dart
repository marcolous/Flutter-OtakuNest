import 'package:anime_world_tutorial/screens/categories_screen/categories_Screen_grid_view.dart';
import 'package:anime_world_tutorial/screens/categories_screen/categories_screen_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoriesScreenBody extends StatefulWidget {
  const CategoriesScreenBody({
    super.key,
  });
  static List<Color?> colors = [
    Colors.pink[100],
    Colors.green[100],
    Colors.blue[100],
    Colors.cyan[100],
    Colors.red[100],
    Colors.orange[100],
    Colors.yellow[100],
    Colors.purple[100],
    Colors.indigo[100],
  ];

  @override
  State<CategoriesScreenBody> createState() => _CategoriesScreenBodyState();
}

class _CategoriesScreenBodyState extends State<CategoriesScreenBody> {
  //final animeTabs = animeCategories.map((animeCategory) => null).toList();
  int currentIndex = 0;
  void updateIndex(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            CategoriesScreenBar(
              colors: CategoriesScreenBody.colors,
              currentIndex: currentIndex,
              onTapCategory: updateIndex,
            ),
            const Gap(20),
            CategoriesScreenGridView(
              currentIndex: currentIndex,
            )
          ],
        ),
      ),
    );
  }
}