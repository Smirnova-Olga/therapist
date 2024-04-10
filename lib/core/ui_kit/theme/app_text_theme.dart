import 'package:flutter/material.dart';
import 'package:therapist/core/ui_kit/theme/color_theme.dart';

abstract class AppTextTheme {
  static const title = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    fontSize: 25,
    letterSpacing: 0.02,
    height: 1.238,
    color: ColorTheme.deepBlue,
  );
  static const gradientButton = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    letterSpacing: 0.02,
    height: 1.238,
    fontSize: 14,
    color: ColorTheme.white,
  );
  static const hint = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: ColorTheme.black,
  );
  static const selectedToggle = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    fontSize: 12,
    height: 1.24,
    letterSpacing: 0.24,
    color: ColorTheme.blue,
  );
  static const unSelectedToggle = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    fontSize: 12,
    height: 1.24,
    letterSpacing: 0.24,
    color: ColorTheme.black,
  );
  static const counterText = TextStyle(
    fontFamily: 'Bebas Neue',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.2,
    letterSpacing: 0.24,
    color: ColorTheme.white,
  );
  static const therapistName = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: ColorTheme.black,
    overflow: TextOverflow.ellipsis,
  );
  static const rating = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: ColorTheme.grey1,
  );
  static const experience = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: ColorTheme.deepOrange,
  );
  static const therapistDescription = TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: ColorTheme.grey1,
    overflow: TextOverflow.fade,
  );
}
