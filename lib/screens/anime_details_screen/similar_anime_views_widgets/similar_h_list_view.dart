import 'package:anime_world_tutorial/models/anime_node.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/anime_details_screen.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/similar_stack_image_title.dart';
import 'package:flutter/material.dart';

class SimilarHListView extends StatelessWidget {
  const SimilarHListView({
    super.key,
    required this.animes,
  });

  final List<AnimeNode> animes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: animes.length,
        separatorBuilder: (context, index) => const SizedBox(width: 6),
        itemBuilder: (context, index) {
          return SimilarStackImageTitle(
            animes: animes[index],
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AnimeDetailsScreen(
                  id: animes[index].id.toString(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}






