import 'package:anime_world_tutorial/models/anime.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SearchAnimeItemImage extends StatelessWidget {
  const SearchAnimeItemImage({
    super.key,
    required this.anime,
  });

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: CachedNetworkImage(
        imageUrl: anime.node.mainPicture.large,
        fit: BoxFit.cover,
      ),
    );
  }
}