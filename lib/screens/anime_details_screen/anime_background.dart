import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:flutter/material.dart';

class AnimeBackground extends StatelessWidget {
  const AnimeBackground({super.key, required this.background});
  final String background;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.red.withOpacity(.8),
      ),
      child: Text(
        background,
        style: TextStyles.styles15.copyWith(color: Colors.white),
      ),
    );
  }
}
