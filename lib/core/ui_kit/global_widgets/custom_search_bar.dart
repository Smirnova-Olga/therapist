import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:therapist/core/ui_kit/theme/app_text_theme.dart';
import 'package:therapist/core/ui_kit/theme/color_theme.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final customBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        color: ColorTheme.border,
      ),
    );
    return Row(
      children: [
        Expanded(
            child: TextFormField(
          decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: AppTextTheme.hint,
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              prefixIcon: Container(
                margin: const EdgeInsets.all(15),
                child: SvgPicture.asset(
                  'assets/icons/magnifying_glass.svg',
                  width: 20,
                  height: 20,
                ),
              ),
              border: customBorder,
              enabledBorder: customBorder,
              focusedBorder: customBorder,
              errorBorder: customBorder.copyWith(
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              )),
        )),
        const SizedBox(width: 10),
        IconButton.outlined(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/funnel.svg',
          ),
          iconSize: 24,
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(50, 50),
            maximumSize: const Size(50, 50),
            side: const BorderSide(
              color: ColorTheme.border,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
