import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  const InfoText({super.key, required this.label, required this.info});
  final String label, info;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: label,
        style: TextStyles.styles12Light.copyWith(color: Colors.blue),
        children: [
          TextSpan(
            text: info,
            style: TextStyles.styles12Light,
          ),
        ],
      ),
    );
  }
}
