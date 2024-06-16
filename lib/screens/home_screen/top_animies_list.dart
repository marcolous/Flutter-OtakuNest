import 'package:anime_world_tutorial/api/get_anime_by_ranking_type.dart';
import 'package:anime_world_tutorial/core/screens/error_screen.dart';
import 'package:anime_world_tutorial/core/widgets/loader.dart';
import 'package:anime_world_tutorial/screens/home_screen/top_animies_slider.dart';
import 'package:flutter/material.dart';

class TopAnimiesList extends StatelessWidget {
  const TopAnimiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: FutureBuilder(
        future: getAnimeByRankingType(rankingType: 'all', limit: 5),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Loader();
          }
          if (snapshot.hasData) {
            final animes = snapshot.data!.toList();
            return TopAnimiesSlider(
              animes: animes,
            );
          }
          return ErrorScreen(error: snapshot.error.toString());
        },
      ),
    );
  }
}