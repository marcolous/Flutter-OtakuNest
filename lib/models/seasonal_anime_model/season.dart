class Season {
  int? year;
  String? season;

  Season({this.year, this.season});

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        year: json['year'] as int?,
        season: json['season'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'year': year,
        'season': season,
      };
}
