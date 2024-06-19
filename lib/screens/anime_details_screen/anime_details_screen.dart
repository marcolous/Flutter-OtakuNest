import 'package:anime_world_tutorial/api/get_anime_details_api.dart';
import 'package:anime_world_tutorial/core/screens/error_screen.dart';
import 'package:anime_world_tutorial/core/widgets/loader.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/anime_details_screen_body.dart';
import 'package:flutter/material.dart';

class AnimeDetailsScreen extends StatelessWidget {
  const AnimeDetailsScreen({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getAnimeDetailsApi(id: id),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Loader();
            }
            if (snapshot.hasData) {
              final anime = snapshot.data!;
              return AnimeDetailsBody(anime: anime);
            }
            return ErrorScreen(error: snapshot.error.toString());
          },
        ),
      ),
    );
  }
}

