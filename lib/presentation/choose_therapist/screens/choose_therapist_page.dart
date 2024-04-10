import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:therapist/core/ui_kit/global_widgets/custom_app_bar.dart';
import 'package:therapist/core/ui_kit/global_widgets/custom_divider.dart';
import 'package:therapist/core/ui_kit/global_widgets/custom_search_bar.dart';
import 'package:therapist/core/ui_kit/global_widgets/gradient_button.dart';
import 'package:therapist/presentation/choose_therapist/cubit/choose_therapist_cubit.dart';
import 'package:therapist/presentation/choose_therapist/widgets/therapist_bottom_bar_widget.dart';

class ChooseTherapistPage extends StatelessWidget {
  const ChooseTherapistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChooseTherapistCubit(),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            title: 'Choose a Therapist',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomDivider(),
              const CustomSearchBar(),
              const Expanded(child: SizedBox()),
              GradientButton(
                text: 'Make An Appointment',
                onTap: () {},
              ),
              const TherapistBottomBarWidget()
            ],
          ),
        ),
      ),
    );
  }
}
