import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:anime_world_tutorial/models/anime_node.dart';
import 'package:flutter/material.dart';

class SimilarHListViewItemTitle extends StatelessWidget {
  const SimilarHListViewItemTitle({
    super.key,
    required this.animes,
  });

  final AnimeNode animes;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          animes.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.styles10,
        ),
      ),
    );
  }
}