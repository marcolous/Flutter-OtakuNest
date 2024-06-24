import 'dart:convert';

import 'package:anime_world_tutorial/config/app_config.dart';
import 'package:anime_world_tutorial/constants/constants.dart';
import 'package:anime_world_tutorial/models/anime_details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<AnimeDetails> getAnimeDetailsApi({required String id}) async {
  final endPoint =
      '${Constants.baseUrl}/$id?fields=id,title,main_picture,alternative_titles,start_date,end_date,synopsis,mean,rank,popularity,num_list_users,num_scoring_users,nsfw,created_at,updated_at,media_type,status,genres,my_list_status,num_episodes,start_season,broadcast,source,average_episode_duration,rating,pictures,background,related_anime,related_manga,recommendations,studios,statistics';

  final response = await http.get(
    Uri.parse(endPoint),
    headers: {'X-MAL-CLIENT-ID': clientId},
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    final animeDetails = AnimeDetails.fromJson(data);
    return animeDetails;
  } else {
    debugPrint('Error : ${response.statusCode}');
    debugPrint('Body : ${response.body}');
    throw Exception('Failed to get data!');
  }
}
