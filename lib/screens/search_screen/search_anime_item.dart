import 'package:anime_world_tutorial/models/anime.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/anime_details_screen.dart';
import 'package:anime_world_tutorial/screens/search_screen/widgets/background_blur.dart';
import 'package:anime_world_tutorial/screens/search_screen/widgets/background_image.dart';
import 'package:anime_world_tutorial/screens/search_screen/widgets/search_anime_item_image.dart';
import 'package:anime_world_tutorial/screens/search_screen/widgets/search_anime_item_title.dart';
import 'package:flutter/material.dart';

class SearchAnimeItem extends StatelessWidget {
  const SearchAnimeItem({super.key, required this.anime, required this.isDark});
  final Anime anime;
  final bool isDark;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              AnimeDetailsScreen(id: anime.node.id.toString()),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Row(
            children: [
              SearchAnimeItemImage(anime: anime),
              Expanded(
                child: Stack(
                  children: [
                    BackGroundImage(anime: anime),
                    const BackGroundBlur(),
                    SearchAnimeItemTitle(anime: anime, isDark: isDark),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}








