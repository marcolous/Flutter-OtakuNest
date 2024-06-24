import 'package:flutter/material.dart';

import 'package:anime_world_tutorial/api/get_anime_by_ranking_type.dart';
import 'package:anime_world_tutorial/core/screens/error_screen.dart';
import 'package:anime_world_tutorial/core/widgets/loader.dart';
import 'package:anime_world_tutorial/customs/custom_stack_image_title.dart';
import 'package:anime_world_tutorial/models/anime_category.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/anime_details_screen.dart';

class CategoriesScreenGridView extends StatelessWidget {
  const CategoriesScreenGridView({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAnimeByRankingType(
        rankingType: animeCategories[currentIndex].rankingType,
        limit: 100,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Loader();
        }
        if (snapshot.hasData) {
          final animes = snapshot.data!.toList();
          return Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: animes.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 9 / 17,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => CustomStackImageTitle(
                animes: animes[index],
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AnimeDetailsScreen(
                        id: animes[index].node.id.toString(),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        }
        return ErrorScreen(error: snapshot.error.toString());
      },
    );
  }
}
