import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:therapist/core/ui_kit/global_widgets/custom_app_bar.dart';
import 'package:therapist/core/ui_kit/global_widgets/custom_divider.dart';
import 'package:therapist/core/ui_kit/global_widgets/custom_search_bar.dart';
import 'package:therapist/core/ui_kit/global_widgets/gradient_button.dart';
import 'package:therapist/data/repository/therapist_repository.dart';
import 'package:therapist/presentation/choose_therapist/cubit/choose_therapist_cubit.dart';
import 'package:therapist/presentation/choose_therapist/widgets/therapist_card_carousel.dart';
import 'package:therapist/presentation/choose_therapist/widgets/therapist_bottom_bar_widget.dart';
import 'package:therapist/presentation/choose_therapist/widgets/therapists_list_widget.dart';

class ChooseTherapistPage extends StatelessWidget {
  const ChooseTherapistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChooseTherapistCubit(TherapistRepository())..init(),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            title: 'Choose a Therapist',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
            children: [
              const CustomDivider(),
              const CustomSearchBar(),
              BlocBuilder<ChooseTherapistCubit, ChooseTherapistState>(
                builder: (context, state) {
                  return Expanded(
                    child: state.viewMode == ViewMode.cards
                        ? TherapistCardCarousel(
                            therapists: state.therapists,
                          )
                        : TherapistListWidget(
                            therapists: state.therapists,
                          ),
                  );
                },
              ),
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
