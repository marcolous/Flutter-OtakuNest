import 'package:anime_world_tutorial/models/anime.dart';
import 'package:flutter/material.dart';

class CustomImagePreviewer extends StatelessWidget {
  const CustomImagePreviewer({
    super.key,
    required this.animes,
  });

  final Anime animes;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 16,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          animes.node.mainPicture.large,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
