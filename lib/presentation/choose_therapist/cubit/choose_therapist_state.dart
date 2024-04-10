part of 'choose_therapist_cubit.dart';

enum ViewMode { list, cards }

class ChooseTherapistState extends Equatable {
  const ChooseTherapistState({
    this.viewMode = ViewMode.cards,
    this.therapists = const [],
  });

  final ViewMode viewMode;
  final List<Therapist> therapists;

  ChooseTherapistState copyWith({
    ViewMode? viewMode,
    List<Therapist>? therapists,
  }) {
    return ChooseTherapistState(
      viewMode: viewMode ?? this.viewMode,
      therapists: therapists ?? this.therapists,
    );
  }

  @override
  List<Object?> get props => [
        viewMode,
        therapists,
      ];
}
