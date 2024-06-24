import 'dart:convert';

import 'package:anime_world_tutorial/common/utils/utils.dart';
import 'package:anime_world_tutorial/config/app_config.dart';
import 'package:anime_world_tutorial/models/anime.dart';
import 'package:anime_world_tutorial/constants/constants.dart';
import 'package:anime_world_tutorial/models/anime_info.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Iterable<Anime>> getSeasonalAnime({required int limit}) async {
  final year = DateTime.now().year;
  final season = getCurrentSeason();
  final endPoint = '${Constants.baseUrl}/season/$year/$season?limit=$limit';

  final response = await http.get(
    Uri.parse(endPoint),
    headers: {'X-MAL-CLIENT-ID': clientId},
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    final seasonalAnime = AnimeInfo.fromJson(data);
    return seasonalAnime.animes;
  } else {
    debugPrint('Error : ${response.statusCode}');
    debugPrint('Body : ${response.body}');
    throw Exception('Failed to get data!');
  }
}
