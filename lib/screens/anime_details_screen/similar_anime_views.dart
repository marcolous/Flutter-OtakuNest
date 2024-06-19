import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:anime_world_tutorial/models/anime_node.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/similar_anime_views_widgets/similar_h_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SimilarAnimeViews extends StatelessWidget {
  const SimilarAnimeViews(
      {super.key, required this.animes, required this.title});
  final List<AnimeNode> animes;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Text(
            title,
            style: TextStyles.styles20.copyWith(color: Colors.white),
          ),
          const Gap(10),
          SimilarHListView(animes: animes),
        ],
      ),
    );
  }
}
