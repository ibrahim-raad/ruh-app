import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/features/sessions/domain/entities/session.dart';
import '../widgets/sessions_segmented_control.dart';

final class SessionsState {
  final SessionsSegment selected;

  final List<Session> upcoming;
  final int upcomingTotal;
  final bool upcomingHasNext;
  final bool upcomingIsLoading;
  final bool upcomingIsLoadingMore;
  final Failure? upcomingFailure;
  final Failure? upcomingLoadMoreFailure;

  final List<Session> past;
  final int pastTotal;
  final bool pastHasNext;
  final bool pastIsLoading;
  final bool pastIsLoadingMore;
  final Failure? pastFailure;
  final Failure? pastLoadMoreFailure;

  const SessionsState({
    required this.selected,
    required this.upcoming,
    required this.upcomingTotal,
    required this.upcomingHasNext,
    required this.upcomingIsLoading,
    required this.upcomingIsLoadingMore,
    required this.upcomingFailure,
    required this.upcomingLoadMoreFailure,
    required this.past,
    required this.pastTotal,
    required this.pastHasNext,
    required this.pastIsLoading,
    required this.pastIsLoadingMore,
    required this.pastFailure,
    required this.pastLoadMoreFailure,
  });

  factory SessionsState.initial() => const SessionsState(
    selected: SessionsSegment.upcoming,
    upcoming: <Session>[],
    upcomingTotal: 0,
    upcomingHasNext: false,
    upcomingIsLoading: false,
    upcomingIsLoadingMore: false,
    upcomingFailure: null,
    upcomingLoadMoreFailure: null,
    past: <Session>[],
    pastTotal: 0,
    pastHasNext: false,
    pastIsLoading: false,
    pastIsLoadingMore: false,
    pastFailure: null,
    pastLoadMoreFailure: null,
  );

  SessionsState copyWith({
    SessionsSegment? selected,
    List<Session>? upcoming,
    int? upcomingTotal,
    bool? upcomingHasNext,
    bool? upcomingIsLoading,
    bool? upcomingIsLoadingMore,
    Failure? upcomingFailure,
    bool clearUpcomingFailure = false,
    Failure? upcomingLoadMoreFailure,
    bool clearUpcomingLoadMoreFailure = false,
    List<Session>? past,
    int? pastTotal,
    bool? pastHasNext,
    bool? pastIsLoading,
    bool? pastIsLoadingMore,
    Failure? pastFailure,
    bool clearPastFailure = false,
    Failure? pastLoadMoreFailure,
    bool clearPastLoadMoreFailure = false,
  }) {
    return SessionsState(
      selected: selected ?? this.selected,
      upcoming: upcoming ?? this.upcoming,
      upcomingTotal: upcomingTotal ?? this.upcomingTotal,
      upcomingHasNext: upcomingHasNext ?? this.upcomingHasNext,
      upcomingIsLoading: upcomingIsLoading ?? this.upcomingIsLoading,
      upcomingIsLoadingMore:
          upcomingIsLoadingMore ?? this.upcomingIsLoadingMore,
      upcomingFailure: clearUpcomingFailure
          ? null
          : (upcomingFailure ?? this.upcomingFailure),
      upcomingLoadMoreFailure: clearUpcomingLoadMoreFailure
          ? null
          : (upcomingLoadMoreFailure ?? this.upcomingLoadMoreFailure),
      past: past ?? this.past,
      pastTotal: pastTotal ?? this.pastTotal,
      pastHasNext: pastHasNext ?? this.pastHasNext,
      pastIsLoading: pastIsLoading ?? this.pastIsLoading,
      pastIsLoadingMore: pastIsLoadingMore ?? this.pastIsLoadingMore,
      pastFailure: clearPastFailure ? null : (pastFailure ?? this.pastFailure),
      pastLoadMoreFailure: clearPastLoadMoreFailure
          ? null
          : (pastLoadMoreFailure ?? this.pastLoadMoreFailure),
    );
  }

  List<Session> get currentItems =>
      selected == SessionsSegment.upcoming ? upcoming : past;

  bool get currentIsLoading =>
      selected == SessionsSegment.upcoming ? upcomingIsLoading : pastIsLoading;

  Failure? get currentFailure =>
      selected == SessionsSegment.upcoming ? upcomingFailure : pastFailure;

  bool get currentHasNext =>
      selected == SessionsSegment.upcoming ? upcomingHasNext : pastHasNext;

  bool get currentIsLoadingMore => selected == SessionsSegment.upcoming
      ? upcomingIsLoadingMore
      : pastIsLoadingMore;

  Failure? get currentLoadMoreFailure => selected == SessionsSegment.upcoming
      ? upcomingLoadMoreFailure
      : pastLoadMoreFailure;
}
