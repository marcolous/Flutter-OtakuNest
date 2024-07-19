import 'dart:ui';

import 'package:flutter/material.dart';

class BackGroundBlur extends StatelessWidget {
  const BackGroundBlur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 1000,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(color: Colors.black),
      ),
    );
  }
}
