import 'node.dart';

class RelatedAnime {
  Node? node;
  String? relationType;
  String? relationTypeFormatted;

  RelatedAnime({this.node, this.relationType, this.relationTypeFormatted});

  factory RelatedAnime.fromJson(Map<String, dynamic> json) => RelatedAnime(
        node: json['node'] == null
            ? null
            : Node.fromJson(json['node'] as Map<String, dynamic>),
        relationType: json['relation_type'] as String?,
        relationTypeFormatted: json['relation_type_formatted'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'node': node?.toJson(),
        'relation_type': relationType,
        'relation_type_formatted': relationTypeFormatted,
      };
}
