import 'main_picture.dart';

class Node {
  int? id;
  String? title;
  MainPicture? mainPicture;

  Node({this.id, this.title, this.mainPicture});

  factory Node.fromJson(Map<String, dynamic> json) => Node(
        id: json['id'] as int?,
        title: json['title'] as String?,
        mainPicture: json['main_picture'] == null
            ? null
            : MainPicture.fromJson(
                json['main_picture'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'main_picture': mainPicture?.toJson(),
      };
}
