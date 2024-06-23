import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:anime_world_tutorial/models/anime.dart';
import 'package:flutter/material.dart';

class SearchAnimeItemTitle extends StatelessWidget {
  const SearchAnimeItemTitle({
    super.key,
    required this.anime,
    required this.isDark,
  });

  final Anime anime;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      left: 10,
      right: 0,
      child: Text(
        anime.node.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.styles16.copyWith(
            color: isDark ? Colors.black : Colors.white),
      ),
    );
  }
}