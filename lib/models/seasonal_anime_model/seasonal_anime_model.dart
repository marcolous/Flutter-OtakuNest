import 'datum.dart';
import 'paging.dart';
import 'season.dart';

class SeasonalAnimeModel {
  List<Datum>? data;
  Paging? paging;
  Season? season;

  SeasonalAnimeModel({this.data, this.paging, this.season});

  factory SeasonalAnimeModel.fromJson(Map<String, dynamic> json) {
    return SeasonalAnimeModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      paging: json['paging'] == null
          ? null
          : Paging.fromJson(json['paging'] as Map<String, dynamic>),
      season: json['season'] == null
          ? null
          : Season.fromJson(json['season'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'paging': paging?.toJson(),
        'season': season?.toJson(),
      };
}
