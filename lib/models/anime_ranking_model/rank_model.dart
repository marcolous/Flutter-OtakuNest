import 'node.dart';
import 'ranking.dart';

class RankModel {
  Node? node;
  Ranking? ranking;

  RankModel({this.node, this.ranking});

  factory RankModel.fromJson(Map<String, dynamic> json) => RankModel(
        node: json['node'] == null
            ? null
            : Node.fromJson(json['node'] as Map<String, dynamic>),
        ranking: json['ranking'] == null
            ? null
            : Ranking.fromJson(json['ranking'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'node': node?.toJson(),
        'ranking': ranking?.toJson(),
      };
}
