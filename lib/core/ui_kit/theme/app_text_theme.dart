import 'package:flutter/material.dart';
import 'package:therapist/core/ui_kit/theme/color_theme.dart';

abstract class AppTextTheme {
  static const title = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    fontSize: 25,
    letterSpacing: 0.02,
    height: 1.238,
    color: ColorTheme.title,
  );
}
