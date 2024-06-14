import 'node.dart';

class Recommendation {
  Node? node;
  int? numRecommendations;

  Recommendation({this.node, this.numRecommendations});

  factory Recommendation.fromJson(Map<String, dynamic> json) {
    return Recommendation(
      node: json['node'] == null
          ? null
          : Node.fromJson(json['node'] as Map<String, dynamic>),
      numRecommendations: json['num_recommendations'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'node': node?.toJson(),
        'num_recommendations': numRecommendations,
      };
}
