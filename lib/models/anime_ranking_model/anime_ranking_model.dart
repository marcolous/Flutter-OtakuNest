import 'rank_model.dart';
import 'paging.dart';

class AnimeRankingModel {
  List<RankModel>? data;
  Paging? paging;

  AnimeRankingModel({this.data, this.paging});

  factory AnimeRankingModel.fromJson(Map<String, dynamic> json) {
    return AnimeRankingModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RankModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      paging: json['paging'] == null
          ? null
          : Paging.fromJson(json['paging'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'paging': paging?.toJson(),
      };
}
