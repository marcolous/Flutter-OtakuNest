import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:anime_world_tutorial/models/anime.dart';
import 'package:flutter/material.dart';

class CustomHListViewItemTitle extends StatelessWidget {
  const CustomHListViewItemTitle({
    super.key,
    required this.animes,
  });

  final Anime animes;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          animes.node.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.styles12,
        ),
      ),
    );
  }
}
