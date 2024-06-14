import 'alternative_titles.dart';
import 'broadcast.dart';
import 'genre.dart';
import 'main_picture.dart';
import 'picture.dart';
import 'recommendation.dart';
import 'related_anime.dart';
import 'start_season.dart';
import 'statistics.dart';
import 'studio.dart';

class AnimeDetailsModel {
  int? id;
  String? title;
  MainPicture? mainPicture;
  AlternativeTitles? alternativeTitles;
  String? startDate;
  String? endDate;
  String? synopsis;
  double? mean;
  int? rank;
  int? popularity;
  int? numListUsers;
  int? numScoringUsers;
  String? nsfw;
  String? createdAt;
  String? updatedAt;
  String? mediaType;
  String? status;
  List<Genre>? genres;
  int? numEpisodes;
  StartSeason? startSeason;
  Broadcast? broadcast;
  String? source;
  int? averageEpisodeDuration;
  String? rating;
  List<Picture>? pictures;
  String? background;
  List<RelatedAnime>? relatedAnime;
  List<dynamic>? relatedManga;
  List<Recommendation>? recommendations;
  List<Studio>? studios;
  Statistics? statistics;

  AnimeDetailsModel({
    this.id,
    this.title,
    this.mainPicture,
    this.alternativeTitles,
    this.startDate,
    this.endDate,
    this.synopsis,
    this.mean,
    this.rank,
    this.popularity,
    this.numListUsers,
    this.numScoringUsers,
    this.nsfw,
    this.createdAt,
    this.updatedAt,
    this.mediaType,
    this.status,
    this.genres,
    this.numEpisodes,
    this.startSeason,
    this.broadcast,
    this.source,
    this.averageEpisodeDuration,
    this.rating,
    this.pictures,
    this.background,
    this.relatedAnime,
    this.relatedManga,
    this.recommendations,
    this.studios,
    this.statistics,
  });

  factory AnimeDetailsModel.fromJson(Map<String, dynamic> json) {
    return AnimeDetailsModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      mainPicture: json['main_picture'] == null
          ? null
          : MainPicture.fromJson(json['main_picture'] as Map<String, dynamic>),
      alternativeTitles: json['alternative_titles'] == null
          ? null
          : AlternativeTitles.fromJson(
              json['alternative_titles'] as Map<String, dynamic>),
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      synopsis: json['synopsis'] as String?,
      mean: (json['mean'] as num?)?.toDouble(),
      rank: json['rank'] as int?,
      popularity: json['popularity'] as int?,
      numListUsers: json['num_list_users'] as int?,
      numScoringUsers: json['num_scoring_users'] as int?,
      nsfw: json['nsfw'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      mediaType: json['media_type'] as String?,
      status: json['status'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      numEpisodes: json['num_episodes'] as int?,
      startSeason: json['start_season'] == null
          ? null
          : StartSeason.fromJson(json['start_season'] as Map<String, dynamic>),
      broadcast: json['broadcast'] == null
          ? null
          : Broadcast.fromJson(json['broadcast'] as Map<String, dynamic>),
      source: json['source'] as String?,
      averageEpisodeDuration: json['average_episode_duration'] as int?,
      rating: json['rating'] as String?,
      pictures: (json['pictures'] as List<dynamic>?)
          ?.map((e) => Picture.fromJson(e as Map<String, dynamic>))
          .toList(),
      background: json['background'] as String?,
      relatedAnime: (json['related_anime'] as List<dynamic>?)
          ?.map((e) => RelatedAnime.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedManga: json['related_manga'] as List<dynamic>?,
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
      studios: (json['studios'] as List<dynamic>?)
          ?.map((e) => Studio.fromJson(e as Map<String, dynamic>))
          .toList(),
      statistics: json['statistics'] == null
          ? null
          : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'main_picture': mainPicture?.toJson(),
        'alternative_titles': alternativeTitles?.toJson(),
        'start_date': startDate,
        'end_date': endDate,
        'synopsis': synopsis,
        'mean': mean,
        'rank': rank,
        'popularity': popularity,
        'num_list_users': numListUsers,
        'num_scoring_users': numScoringUsers,
        'nsfw': nsfw,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'media_type': mediaType,
        'status': status,
        'genres': genres?.map((e) => e.toJson()).toList(),
        'num_episodes': numEpisodes,
        'start_season': startSeason?.toJson(),
        'broadcast': broadcast?.toJson(),
        'source': source,
        'average_episode_duration': averageEpisodeDuration,
        'rating': rating,
        'pictures': pictures?.map((e) => e.toJson()).toList(),
        'background': background,
        'related_anime': relatedAnime?.map((e) => e.toJson()).toList(),
        'related_manga': relatedManga,
        'recommendations': recommendations?.map((e) => e.toJson()).toList(),
        'studios': studios?.map((e) => e.toJson()).toList(),
        'statistics': statistics?.toJson(),
      };
}
