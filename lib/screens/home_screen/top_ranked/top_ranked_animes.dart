import 'package:anime_world_tutorial/api/get_anime_by_ranking_type.dart';
import 'package:anime_world_tutorial/core/screens/error_screen.dart';
import 'package:anime_world_tutorial/core/widgets/loader.dart';
import 'package:anime_world_tutorial/customs/custom_h_list_view.dart';
import 'package:anime_world_tutorial/customs/custom_title_row.dart';
import 'package:flutter/material.dart';

class TopRankedAnimes extends StatelessWidget {
  const TopRankedAnimes({super.key, required this.rankingType});
  final String rankingType;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAnimeByRankingType(
        rankingType: rankingType,
        limit: 10,
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Loader();
        }
        if (snapshot.hasData) {
          final animes = snapshot.data!.toList();
          return SizedBox(
            height: 350,
            child: Column(
              children: [
                CustomTitleRow(
                  title: 'Top Ranked',
                  onPressed: () {},
                ),
                CustomHListView(animes: animes),
              ],
            ),
          );
        }
        return ErrorScreen(error: snapshot.error.toString());
      },
    );
  }
}
