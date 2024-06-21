import 'dart:ui';
import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:anime_world_tutorial/models/anime.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/anime_details_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SearchAnimeItem extends StatelessWidget {
  const SearchAnimeItem({super.key, required this.anime, required this.isDark});
  final Anime anime;
  final bool isDark;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              AnimeDetailsScreen(id: anime.node.id.toString()),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: CachedNetworkImage(
                  imageUrl: anime.node.mainPicture.large,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 300,
                      child: CachedNetworkImage(
                        imageUrl: anime.node.mainPicture.large,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      left: 10000,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                        child: Container(color: Colors.black),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 10,
                      right: 0,
                      child: Text(
                        anime.node.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.styles16.copyWith(
                            color: isDark ? Colors.black : Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
