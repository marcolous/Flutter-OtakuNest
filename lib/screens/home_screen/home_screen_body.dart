import 'package:anime_world_tutorial/screens/home_screen/top_anime_slider/top_animes_list.dart';
import 'package:anime_world_tutorial/screens/home_screen/top_ranked/top_ranked_animes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: const [
          TopAnimesList(),
          TopRankedAnimes(rankingType: 'all'),
        ],
      ),
    );
  }
}
