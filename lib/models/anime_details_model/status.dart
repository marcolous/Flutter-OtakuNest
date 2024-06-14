class Status {
  String? watching;
  String? completed;
  String? onHold;
  String? dropped;
  String? planToWatch;

  Status({
    this.watching,
    this.completed,
    this.onHold,
    this.dropped,
    this.planToWatch,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        watching: json['watching'] as String?,
        completed: json['completed'] as String?,
        onHold: json['on_hold'] as String?,
        dropped: json['dropped'] as String?,
        planToWatch: json['plan_to_watch'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'watching': watching,
        'completed': completed,
        'on_hold': onHold,
        'dropped': dropped,
        'plan_to_watch': planToWatch,
      };
}
