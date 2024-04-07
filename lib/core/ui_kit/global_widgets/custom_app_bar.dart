import 'package:flutter/material.dart';
import 'package:therapist/core/ui_kit/theme/app_text_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back,
          size: 20,
        ),
      ),
      titleSpacing: 0.0,
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: AppTextTheme.title,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
