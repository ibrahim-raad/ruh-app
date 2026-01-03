import 'package:ruh/core/errors/failures.dart';
import '../../domain/entities/therapist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'therapists_state.freezed.dart';

sealed class TherapistsState {
  const TherapistsState();
}

final class TherapistsInitial extends TherapistsState {
  const TherapistsInitial();
}

final class TherapistsLoading extends TherapistsState {
  const TherapistsLoading();
}

final class TherapistsError extends TherapistsState {
  final Failure failure;
  const TherapistsError(this.failure);
}

@freezed
abstract class TherapistsLoaded
    with _$TherapistsLoaded
    implements TherapistsState {
  factory TherapistsLoaded({
    required List<TherapistOutput> therapists,
    required int total,
    required bool hasNext,
    @Default(false) bool isLoadingMore,
    Failure? loadMoreFailure,
    @Default(false) bool clearLoadMoreFailure,
  }) = _TherapistsLoaded;
}
