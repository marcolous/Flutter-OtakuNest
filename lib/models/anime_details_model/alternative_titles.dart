class AlternativeTitles {
  List<String>? synonyms;
  String? en;
  String? ja;

  AlternativeTitles({this.synonyms, this.en, this.ja});

  factory AlternativeTitles.fromJson(Map<String, dynamic> json) {
    return AlternativeTitles(
      synonyms: json['synonyms'] as List<String>?,
      en: json['en'] as String?,
      ja: json['ja'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'synonyms': synonyms,
        'en': en,
        'ja': ja,
      };
}
