import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTitleRow extends StatelessWidget {
  const CustomTitleRow({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyles.styles20,
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                'View All',
                style: TextStyles.styles15.copyWith(color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
