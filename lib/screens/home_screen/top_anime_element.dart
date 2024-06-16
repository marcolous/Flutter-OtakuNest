import 'package:anime_world_tutorial/models/anime.dart';
import 'package:flutter/material.dart';

class TopAnimeElement extends StatelessWidget {
  const TopAnimeElement({super.key, required this.anime});
  final Anime anime;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.white,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.network(
            anime.node.mainPicture.medium,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}