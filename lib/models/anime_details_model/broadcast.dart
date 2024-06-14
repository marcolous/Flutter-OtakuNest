class Broadcast {
  String? dayOfTheWeek;
  String? startTime;

  Broadcast({this.dayOfTheWeek, this.startTime});

  factory Broadcast.fromJson(Map<String, dynamic> json) => Broadcast(
        dayOfTheWeek: json['day_of_the_week'] as String?,
        startTime: json['start_time'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'day_of_the_week': dayOfTheWeek,
        'start_time': startTime,
      };
}
