import 'package:flutter/material.dart';

@immutable
abstract class Constants {
  // Theme Related
  static const String isDarkMode = 'is_dark_mode';
  static const String darkTheme = 'dark';
  static const String lightTheme = 'light';

  // Language Title
  static const String isEnglish = 'is_english';
  static const String japanese = 'ja';
  static const String english = 'en';

  static const String baseUrl = 'https://api.myanimelist.net/v2/anime';
  //////const Constants._();
}
