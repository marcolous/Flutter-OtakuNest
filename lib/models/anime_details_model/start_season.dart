class StartSeason {
  int? year;
  String? season;

  StartSeason({this.year, this.season});

  factory StartSeason.fromJson(Map<String, dynamic> json) => StartSeason(
        year: json['year'] as int?,
        season: json['season'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'year': year,
        'season': season,
      };
}
