import 'dart:convert';

import 'package:anime_world_tutorial/config/app_config.dart';
import 'package:anime_world_tutorial/constants/constants.dart';
import 'package:anime_world_tutorial/models/anime.dart';
import 'package:anime_world_tutorial/models/anime_info.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Iterable<Anime>> getAnimeBySearch({required String query}) async {
  final searchUrl = '${Constants.baseUrl}?q=$query&limit=100';

  final response = await http.get(
    Uri.parse(searchUrl),
    headers: {'X-MAL-CLIENT-ID': clientId},
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    AnimeInfo animeInfo = AnimeInfo.fromJson(data);
    Iterable<Anime> animes = animeInfo.animes;
    return animes;
  } else {
    debugPrint('Error : ${response.statusCode}');
    debugPrint('Body : ${response.body}');
    throw Exception('Failed to get data!');
  }
}
