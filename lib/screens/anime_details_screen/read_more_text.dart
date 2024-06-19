import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ReadMoreText extends StatefulWidget {
  const ReadMoreText({super.key, required this.longText});
  final String longText;
  @override
  State<ReadMoreText> createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool readMore = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text(
          widget.longText,
          style: TextStyles.styles15,
          maxLines: readMore ? 1000 : 5,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              readMore = !readMore;
            });
          },
          child: Text(
            readMore ? 'Read Less' : 'Read More',
            style:
                TextStyles.styles15.copyWith(color: Colors.red.withOpacity(.9)),
          ),
        )
      ],
    );
  }
}
