class Ranking {
  int? rank;

  Ranking({this.rank});

  factory Ranking.fromJson(Map<String, dynamic> json) => Ranking(
        rank: json['rank'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'rank': rank,
      };
}
