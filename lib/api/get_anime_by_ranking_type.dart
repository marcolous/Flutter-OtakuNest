import 'dart:convert';

import 'package:anime_world_tutorial/config/app_config.dart';
import 'package:anime_world_tutorial/models/anime_ranking_model/rank_model.dart';
import 'package:anime_world_tutorial/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Iterable<RankModel>> getAnimeByRankingType(
    {required String rankingType, required int limit}) async {
  final rankUrl =
      '${Constants.rankBaseUrl}ranking_type=$rankingType&limit=$limit';

  final response = await http.get(
    Uri.parse(rankUrl),
    headers: {'X-MAL-CLIENT-ID': clientId},
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    final List<dynamic> animeNodeList = data['data'];
    final animes = animeNodeList
        .where((animeNode) => animeNode['node']['main_picture'] != null)
        .map((node) => RankModel.fromJson(node));
    return animes;
  } else {
    debugPrint('Error : ${response.statusCode}');
    debugPrint('Body : ${response.body}');
    throw Exception('Failed to get data!');
  }
}
