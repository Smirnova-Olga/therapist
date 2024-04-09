part of 'choose_therapist_cubit.dart';

enum ViewMode { list, cards }

class ChooseTherapistState extends Equatable {
  const ChooseTherapistState({
    this.viewMode = ViewMode.cards,
  });

  final ViewMode viewMode;

  ChooseTherapistState copyWith({
    ViewMode? viewMode,
  }) {
    return ChooseTherapistState(
      viewMode: viewMode ?? this.viewMode,
    );
  }

  @override
  List<Object?> get props => [
        viewMode,
      ];
}
