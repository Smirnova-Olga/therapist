import 'package:flutter/material.dart';
import 'package:therapist/core/ui_kit/theme/color_theme.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Divider(color: ColorTheme.grey2),
    );
  }
}
