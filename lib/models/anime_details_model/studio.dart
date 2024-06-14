class Studio {
  int? id;
  String? name;

  Studio({this.id, this.name});

  factory Studio.fromJson(Map<String, dynamic> json) => Studio(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
