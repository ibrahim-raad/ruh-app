import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/therapy_case/domain/entities/therapy_case.dart';
import 'package:ruh/features/therapy_case/domain/repositories/therapy_case_repository.dart';
import 'package:ruh/features/sessions/domain/repositories/sessions_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final TherapyCaseRepository _repo;
  final SessionsRepository _sessionsRepo;

  HomeCubit(this._repo, this._sessionsRepo) : super(HomeState.initial());

  Future<void> loadActiveCases() async {
    emit(state.copyWith(isLoading: true, clearFailure: true));

    final dto = PaginationQueryParamsDto(
      offset: 0,
      limit: 2,
      sort: 'created_at DESC',
      queryParams: {'status': TherapyCaseStatus.active.name.toUpperCase()},
    );

    final result = await _repo.getTherapyCases(dto);
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (page) => emit(
        state.copyWith(
          isLoading: false,
          activeCases: page.items,
          clearFailure: true,
        ),
      ),
    );

    await loadNextUpcomingSession();
  }

  Future<void> loadNextUpcomingSession() async {
    emit(
      state.copyWith(isLoadingNextSession: true, clearNextSessionFailure: true),
    );

    final nowIso = DateTime.now().toIso8601String();
    final dto = PaginationQueryParamsDto(
      offset: 0,
      limit: 1,
      sort: 'start_time ASC',
      queryParams: {'after_date': nowIso},
    );

    final result = await _sessionsRepo.getSessions(dto);
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoadingNextSession: false,
          nextSessionFailure: failure,
          clearNextSession: true,
        ),
      ),
      (page) => emit(
        state.copyWith(
          isLoadingNextSession: false,
          nextSession: page.items.isEmpty ? null : page.items.first,
          clearNextSessionFailure: true,
        ),
      ),
    );
  }
}
