import 'package:anime_world_tutorial/common/extensions/extensions.dart';
import 'package:anime_world_tutorial/models/anime_details.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/info_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AnimeDetailsInfo extends StatelessWidget {
  const AnimeDetailsInfo({super.key, required this.anime});
  final AnimeDetails anime;

  String get studios => anime.studios.map((studio) => studio.name).join(', ');
  String get genres => anime.genres.map((genre) => genre.name).join(', ');
  String get otherNames =>
      anime.alternativeTitles.synonyms.map((title) => title).join(', ');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoText(label: 'Genres:  ', info: genres),
          const Gap(10),
          InfoText(label: 'Start date:  ', info: anime.startDate),
          const Gap(10),
          InfoText(label: 'End date:  ', info: anime.endDate),
          const Gap(10),
          InfoText(label: 'Episodes:  ', info: anime.numEpisodes.toString()),
          const Gap(10),
          InfoText(
              label: 'Average Episode Duration:  ',
              info: anime.averageEpisodeDuration.toMinute()),
          const Gap(10),
          InfoText(label: 'Status:  ', info: anime.status),
          const Gap(10),
          InfoText(label: 'Rating:  ', info: anime.rating),
          const Gap(10),
          InfoText(label: 'Studios:  ', info: studios),
          const Gap(10),
          InfoText(label: 'Other Names:  ', info: otherNames),
          const Gap(10),
          InfoText(label: 'English Name:  ', info: anime.alternativeTitles.en),
          const Gap(10),
          InfoText(label: 'Japanese Name:  ', info: anime.alternativeTitles.ja),
          const Gap(10),
        ],
      ),
    );
  }
}

