class Paging {
  String? next;

  Paging({this.next});

  factory Paging.fromJson(Map<String, dynamic> json) => Paging(
        next: json['next'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'next': next,
      };
}
