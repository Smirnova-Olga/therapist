import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:therapist/core/ui_kit/theme/app_text_theme.dart';
import 'package:therapist/core/ui_kit/theme/color_theme.dart';
import 'package:therapist/presentation/choose_therapist/cubit/choose_therapist_cubit.dart';

class TherapistBottomBarWidget extends StatelessWidget {
  const TherapistBottomBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 16.0,
              spreadRadius: 0,
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropDownButton(),
              ToggleSwitchWidget(),
              LikeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class DropDownButton extends StatelessWidget {
  const DropDownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorTheme.dropdownBorder),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: 'German',
            icon: SvgPicture.asset(
              'assets/icons/caret_down.svg',
            ),
            onChanged: (String? newValue) {},
            items: [
              DropdownMenuItem<String>(
                value: 'German',
                child: SizedBox(
                  child: Image.asset(
                    'assets/images/germany_flag4x.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            selectedItemBuilder: (BuildContext context) {
              return [
                Image.asset(
                  'assets/images/germany_flag4x.png',
                  fit: BoxFit.cover,
                ),
              ];
            },
          ),
        ),
      ),
    );
  }
}

class ToggleSwitchWidget extends StatelessWidget {
  const ToggleSwitchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseTherapistCubit, ChooseTherapistState>(
      builder: (context, state) {
        return Container(
          height: 50,
          decoration: BoxDecoration(
            color: ColorTheme.buttonBackground,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ButtonBar(
              buttonPadding: const EdgeInsets.symmetric(vertical: 6),
              mainAxisSize: MainAxisSize.max,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    elevation: 0,
                    backgroundColor: state.viewMode == ViewMode.list
                        ? ColorTheme.white
                        : ColorTheme.buttonBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ).copyWith(
                    splashFactory: NoSplash.splashFactory,
                  ),
                  child: Text(
                    'List',
                    style: state.viewMode == ViewMode.list
                        ? AppTextTheme.selectedToggle
                        : AppTextTheme.unSelectedToggle,
                  ),
                  onPressed: () => context
                      .read<ChooseTherapistCubit>()
                      .switchView(ViewMode.list),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    elevation: 0,
                    backgroundColor: state.viewMode == ViewMode.cards
                        ? ColorTheme.white
                        : ColorTheme.buttonBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ).copyWith(
                    splashFactory: NoSplash.splashFactory,
                  ),
                  child: Text(
                    'Cards',
                    style: state.viewMode == ViewMode.cards
                        ? AppTextTheme.selectedToggle
                        : AppTextTheme.unSelectedToggle,
                  ),
                  onPressed: () => context
                      .read<ChooseTherapistCubit>()
                      .switchView(ViewMode.cards),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class LikeWidget extends StatelessWidget {
  const LikeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton.outlined(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/heart.svg',
          ),
          iconSize: 20.83,
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(50, 50),
            maximumSize: const Size(50, 50),
            side: const BorderSide(color: Colors.transparent),
            backgroundColor: ColorTheme.buttonBackground,
          ),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: ColorTheme.deepBlue,
                  borderRadius: BorderRadius.circular(50)),
              child: const Center(
                child: Text(
                  '28',
                  style: AppTextTheme.counterText,
                ),
              ),
            ))
      ],
    );
  }
}
