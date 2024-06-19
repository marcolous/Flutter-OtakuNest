import 'package:anime_world_tutorial/models/anime_details.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/anime_background.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/anime_details_image.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/anime_details_info.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/anime_details_title.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/gallery_images.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/read_more_text.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/similar_anime_views.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AnimeDetailsBody extends StatelessWidget {
  const AnimeDetailsBody({super.key, required this.anime});
  final AnimeDetails anime;
  @override
  Widget build(BuildContext context) {
    return ListView(
      clipBehavior: Clip.none,
      children: [
        AnimeDetailsImage(anime: anime),
        const Gap(10),
        AnimeDetailsTitle(anime: anime),
        const Gap(10),
        ReadMoreText(longText: anime.synopsis),
        const Gap(10),
        AnimeDetailsInfo(anime: anime),
        const Gap(10),
        anime.background.isNotEmpty
            ? AnimeBackground(background: anime.background)
            : const SizedBox.shrink(),
        const Gap(30),
        GalleryImages(images: anime.pictures),
        const Gap(30),
        SimilarAnimeViews(
          animes: anime.relatedAnime
              .map((relatedAnime) => relatedAnime.node)
              .toList(),
          title: 'Related Anime',
        ),
        const Gap(30),
        SimilarAnimeViews(
          animes:
              anime.recommendations.map((animeRec) => animeRec.node).toList(),
          title: 'Recommendations',
        ),
        const Gap(20),
      ],
    );
  }
}
