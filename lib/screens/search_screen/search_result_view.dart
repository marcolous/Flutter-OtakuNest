import 'package:anime_world_tutorial/models/anime.dart';
import 'package:anime_world_tutorial/screens/search_screen/search_anime_item.dart';
import 'package:flutter/material.dart';

class SearchResultsView extends StatelessWidget {
  const SearchResultsView(
      {super.key, required this.animes, required this.isDark});
  final Iterable<Anime> animes;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: animes.length,
          itemBuilder: (context, index) {
            final anime = animes.elementAt(index);
            return SearchAnimeItem(
              anime: anime,
              isDark: isDark,
            );
          },
        ),
      ),
    );
  }
}