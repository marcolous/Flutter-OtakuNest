import 'package:anime_world_tutorial/config/theme/app_theme.dart';
import 'package:anime_world_tutorial/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const OtakuNest());
}

class OtakuNest extends StatelessWidget {
  const OtakuNest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
