import 'node.dart';

class Datum {
  Node? node;

  Datum({this.node});

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        node: json['node'] == null
            ? null
            : Node.fromJson(json['node'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'node': node?.toJson(),
      };
}
