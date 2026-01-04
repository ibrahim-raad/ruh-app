import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/sessions/domain/repositories/sessions_repository.dart';
import '../widgets/sessions_segmented_control.dart';
import 'sessions_state.dart';

class SessionsCubit extends Cubit<SessionsState> {
  final SessionsRepository _repo;

  SessionsCubit(this._repo) : super(SessionsState.initial());

  PaginationQueryParamsDto _dtoForSegment({
    required SessionsSegment segment,
    required int offset,
    required int limit,
  }) {
    final nowIso = DateTime.now().toIso8601String();
    final queryParams = <String, dynamic>{};
    if (segment == SessionsSegment.upcoming) {
      queryParams['after_date'] = nowIso;
    } else {
      queryParams['before_date'] = nowIso;
    }

    return PaginationQueryParamsDto(
      offset: offset,
      limit: limit,
      sort: segment == SessionsSegment.upcoming
          ? 'start_time ASC'
          : 'start_time DESC',
      queryParams: queryParams,
    );
  }

  Future<void> init() async {
    await loadInitialFor(state.selected);
  }

  Future<void> selectSegment(SessionsSegment segment) async {
    if (segment == state.selected) return;
    emit(state.copyWith(selected: segment));

    final hasData = segment == SessionsSegment.upcoming
        ? state.upcoming.isNotEmpty
        : state.past.isNotEmpty;
    if (!hasData) {
      await loadInitialFor(segment);
    }
  }

  Future<void> refreshCurrent() => loadInitialFor(state.selected);

  Future<void> loadInitialFor(SessionsSegment segment) async {
    if (segment == SessionsSegment.upcoming) {
      emit(
        state.copyWith(
          upcomingIsLoading: true,
          clearUpcomingFailure: true,
          clearUpcomingLoadMoreFailure: true,
        ),
      );
    } else {
      emit(
        state.copyWith(
          pastIsLoading: true,
          clearPastFailure: true,
          clearPastLoadMoreFailure: true,
        ),
      );
    }

    final dto = _dtoForSegment(segment: segment, offset: 0, limit: 10);
    final result = await _repo.getSessions(dto);

    result.fold(
      (failure) {
        if (segment == SessionsSegment.upcoming) {
          emit(
            state.copyWith(upcomingIsLoading: false, upcomingFailure: failure),
          );
        } else {
          emit(state.copyWith(pastIsLoading: false, pastFailure: failure));
        }
      },
      (page) {
        if (segment == SessionsSegment.upcoming) {
          emit(
            state.copyWith(
              upcomingIsLoading: false,
              upcoming: page.items,
              upcomingTotal: page.total,
              upcomingHasNext: page.hasNext,
              clearUpcomingFailure: true,
              clearUpcomingLoadMoreFailure: true,
            ),
          );
        } else {
          emit(
            state.copyWith(
              pastIsLoading: false,
              past: page.items,
              pastTotal: page.total,
              pastHasNext: page.hasNext,
              clearPastFailure: true,
              clearPastLoadMoreFailure: true,
            ),
          );
        }
      },
    );
  }

  Future<void> loadNext() async {
    final segment = state.selected;

    if (segment == SessionsSegment.upcoming) {
      if (state.upcomingIsLoading ||
          state.upcomingIsLoadingMore ||
          !state.upcomingHasNext) {
        return;
      }
      emit(state.copyWith(upcomingIsLoadingMore: true));

      final dto = _dtoForSegment(
        segment: segment,
        offset: state.upcoming.length,
        limit: 10,
      );
      final result = await _repo.getSessions(dto);
      result.fold(
        (failure) => emit(
          state.copyWith(
            upcomingIsLoadingMore: false,
            upcomingLoadMoreFailure: failure,
          ),
        ),
        (page) => emit(
          state.copyWith(
            upcomingIsLoadingMore: false,
            upcoming: [...state.upcoming, ...page.items],
            upcomingTotal: page.total,
            upcomingHasNext: page.hasNext,
            clearUpcomingLoadMoreFailure: true,
          ),
        ),
      );
      return;
    }

    if (state.pastIsLoading || state.pastIsLoadingMore || !state.pastHasNext) {
      return;
    }
    emit(state.copyWith(pastIsLoadingMore: true));

    final dto = _dtoForSegment(
      segment: segment,
      offset: state.past.length,
      limit: 10,
    );
    final result = await _repo.getSessions(dto);
    result.fold(
      (failure) => emit(
        state.copyWith(pastIsLoadingMore: false, pastLoadMoreFailure: failure),
      ),
      (page) => emit(
        state.copyWith(
          pastIsLoadingMore: false,
          past: [...state.past, ...page.items],
          pastTotal: page.total,
          pastHasNext: page.hasNext,
          clearPastLoadMoreFailure: true,
        ),
      ),
    );
  }
}
