import 'package:anime_world_tutorial/screens/home_screen/top_anime_slider/top_animes_list.dart';
import 'package:anime_world_tutorial/screens/home_screen/top_ranked/top_ranked_animes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            Gap(20),
            TopAnimesList(),
            TopRankedAnimes(rankingType: 'all', title: 'Top Ranked'),
            Gap(20),
            TopRankedAnimes(rankingType: 'bypopularity', title: 'Top Popular'),
            Gap(20),
            TopRankedAnimes(rankingType: 'movie', title: 'Top Movies'),
            Gap(20),
            TopRankedAnimes(rankingType: 'upcoming', title: 'Top Upcoming'),
          ],
        ),
      ),
    );
  }
}

