import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:anime_world_tutorial/models/anime_details.dart';
import 'package:flutter/material.dart';

class AnimeDetailsTitle extends StatelessWidget {
  const AnimeDetailsTitle({
    super.key,
    required this.anime,
  });

  final AnimeDetails anime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        anime.title,
        style: TextStyles.styles20
            .copyWith(color: const Color.fromARGB(255, 184, 114, 114)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
