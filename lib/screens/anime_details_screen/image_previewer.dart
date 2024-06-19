import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePreviewer extends StatelessWidget {
  const ImagePreviewer({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
