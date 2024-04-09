import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'choose_therapist_state.dart';

class ChooseTherapistCubit extends Cubit<ChooseTherapistState> {
  ChooseTherapistCubit()
      : super(
          const ChooseTherapistState(),
        );

  void switchView(ViewMode viewMode) {
    emit(
      state.copyWith(viewMode: viewMode),
    );
  }
}
