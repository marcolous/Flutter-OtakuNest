import 'package:anime_world_tutorial/models/anime_node.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/similar_anime_views_widgets/similar_h_laist_view_item_title.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/similar_anime_views_widgets/similar_image_previewer.dart';
import 'package:flutter/material.dart';

class SimilarStackImageTitle extends StatelessWidget {
  const SimilarStackImageTitle({
    super.key,
    required this.animes,
    required this.onTap,
  });
  final Function() onTap;
  final AnimeNode animes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: AspectRatio(
          aspectRatio: 9 / 17,
          child: Container(
            color: Colors.red,
            child: Stack(
              children: [
                SimilarImagePreviewer(animes: animes),
                SimilarHListViewItemTitle(animes: animes)
              ],
            ),
          ),
        ),
      ),
    );
  }
}