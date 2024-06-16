import 'package:anime_world_tutorial/customs/custom_h_list_view_item_title.dart';
import 'package:anime_world_tutorial/customs/custom_image_previewer.dart';
import 'package:anime_world_tutorial/models/anime.dart';
import 'package:flutter/material.dart';

class CustomStackImageTitle extends StatelessWidget {
  const CustomStackImageTitle({
    super.key,
    required this.animes,
  });

  final Anime animes;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 9 / 17,
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              CustomImagePreviewer(animes: animes),
              CustomHListViewItemTitle(animes: animes)
            ],
          ),
        ),
      ),
    );
  }
}
