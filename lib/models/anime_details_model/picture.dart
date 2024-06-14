class Picture {
  String? medium;
  String? large;

  Picture({this.medium, this.large});

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        medium: json['medium'] as String?,
        large: json['large'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'medium': medium,
        'large': large,
      };
}
