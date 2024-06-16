import 'package:anime_world_tutorial/customs/custom_stack_image_title.dart';
import 'package:anime_world_tutorial/models/anime.dart';
import 'package:flutter/material.dart';

class CustomHListView extends StatelessWidget {
  const CustomHListView({
    super.key,
    required this.animes,
  });

  final List<Anime> animes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: animes.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return CustomStackImageTitle(animes: animes[index]);
        },
      ),
    );
  }
}
