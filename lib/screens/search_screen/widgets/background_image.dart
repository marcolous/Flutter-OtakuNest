import 'package:anime_world_tutorial/models/anime.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({
    super.key,
    required this.anime,
  });

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: CachedNetworkImage(
        imageUrl: anime.node.mainPicture.large,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
