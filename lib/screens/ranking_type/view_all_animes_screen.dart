import 'package:anime_world_tutorial/api/get_anime_by_ranking_type.dart';
import 'package:anime_world_tutorial/core/screens/error_screen.dart';
import 'package:anime_world_tutorial/core/widgets/loader.dart';
import 'package:anime_world_tutorial/customs/custom_stack_image_title.dart';
import 'package:flutter/material.dart';

class ViewAllAnimesScreen extends StatelessWidget {
  const ViewAllAnimesScreen({
    super.key,
    required this.rankingType,
    required this.title,
  });
  final String rankingType;
  final String title;
  final int itemsCount = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getAnimeByRankingType(
            rankingType: rankingType,
            limit: itemsCount,
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Loader();
            }
            if (snapshot.hasData) {
              final animes = snapshot.data!.toList();
              return GridView.builder(
                itemCount: itemsCount,
                gridDelegate: customSliverGridDelegate(),
                itemBuilder: (context, index) {
                  return CustomStackImageTitle(animes: animes[index]);
                },
              );
            }
            return ErrorScreen(error: snapshot.error.toString());
          },
        ),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount customSliverGridDelegate() {
    return const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 9 / 17,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
    );
  }
}
