class MainPicture {
  String? medium;
  String? large;

  MainPicture({this.medium, this.large});

  factory MainPicture.fromJson(Map<String, dynamic> json) => MainPicture(
        medium: json['medium'] as String?,
        large: json['large'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'medium': medium,
        'large': large,
      };
}
