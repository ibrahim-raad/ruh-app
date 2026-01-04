import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/features/journal/domain/dtos/create_reflection_dto.dart';
import 'package:ruh/features/journal/domain/entities/reflection.dart';

part 'journal_state.freezed.dart';

enum JournalLastAction { created, updated, deleted }

@freezed
abstract class JournalState with _$JournalState {
  const factory JournalState({
    required DateTime selectedDay,
    required DateTime focusedDay,

    @Default('') String searchText,
    JournalMood? filterMood,

    JournalMood? draftMood,
    @Default('') String draftContent,
    String? editingId,
    int? editingVersion,

    @Default(<Reflection>[]) List<Reflection> items,
    @Default(false) bool hasNext,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isSaving,

    Failure? failure,
    Failure? loadMoreFailure,

    JournalLastAction? lastAction,
    @Default(0) int actionNonce,
  }) = _JournalState;

  factory JournalState.initial({required DateTime today}) {
    final d = DateTime(today.year, today.month, today.day);
    return JournalState(selectedDay: d, focusedDay: d);
  }
}
