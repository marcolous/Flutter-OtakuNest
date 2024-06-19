import 'package:anime_world_tutorial/models/anime_node.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SimilarImagePreviewer extends StatelessWidget {
  const SimilarImagePreviewer({
    super.key,
    required this.animes,
  });

  final AnimeNode animes;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 16,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          imageUrl: animes.mainPicture.large,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}