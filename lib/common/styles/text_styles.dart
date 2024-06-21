import 'package:flutter/material.dart';

@immutable
class TextStyles {
  static const styles10 = TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.w600,
    fontFamily: 'anime',
    color: Colors.white,
  );

  static const styles12Light = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    fontFamily: 'anime',
    color: Colors.white,
  );
  static const styles12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'anime',
    color: Colors.white,
  );

  static const styles14medium = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'anime',
  );

  // Small text
  static final styles15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.white.withOpacity(.7),
    fontFamily: 'anime',
  );

  // Medium Text
  static const styles16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'anime',
  );
  static const styles18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: 'anime',
    letterSpacing: 1,
  );

  // Large Text
  static const styles20 = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: 'anime',
  );
  static const styles25 = TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.w700,
    fontFamily: 'anime',
  );

  const TextStyles._();
}
