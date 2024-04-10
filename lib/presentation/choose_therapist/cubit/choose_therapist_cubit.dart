import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:therapist/data/models/therapist_model.dart';
import 'package:therapist/data/repository/therapist_repository.dart';

part 'choose_therapist_state.dart';

class ChooseTherapistCubit extends Cubit<ChooseTherapistState> {
  final TherapistRepository therapistRepository;
  ChooseTherapistCubit(this.therapistRepository)
      : super(
          const ChooseTherapistState(),
        );
  void init() {
    final therapists = therapistRepository.fetchTherapistList();
    emit(state.copyWith(therapists: therapists));
  }

  void switchView(ViewMode viewMode) {
    emit(
      state.copyWith(viewMode: viewMode),
    );
  }
}
