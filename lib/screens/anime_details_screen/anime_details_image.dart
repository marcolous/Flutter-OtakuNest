import 'package:anime_world_tutorial/models/anime_details.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AnimeDetailsImage extends StatelessWidget {
  const AnimeDetailsImage({
    super.key,
    required this.anime,
  });

  final AnimeDetails anime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: CachedNetworkImage(
        imageUrl: anime.mainPicture.large,
        fit: BoxFit.cover,
        height: 500,
        width: double.infinity,
        alignment: Alignment.topCenter,
      ),
    );
  }
}