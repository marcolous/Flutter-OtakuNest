import 'package:anime_world_tutorial/screens/home_screen/top_animies_list.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          TopAnimiesList(),
        ],
      ),
    );
  }
}







