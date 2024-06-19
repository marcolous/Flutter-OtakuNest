import 'package:anime_world_tutorial/common/styles/text_styles.dart';
import 'package:anime_world_tutorial/models/picture.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/anime_details_images_previewer.dart';
import 'package:anime_world_tutorial/screens/anime_details_screen/image_previewer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GalleryImages extends StatelessWidget {
  const GalleryImages({super.key, required this.images});
  final List<Picture> images;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Gallery',
          style: TextStyles.styles20.copyWith(color: Colors.white),
        ),
        const Gap(10),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          clipBehavior: Clip.none,
          itemCount: images.length,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 9 / 16,
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        ImagePreviewer(image: images[index].large),
                  ),
                );
              },
              child: AnimeDetailsImagesPreviewer(image: images[index].large),
            );
          },
        )
      ],
    );
  }
}
