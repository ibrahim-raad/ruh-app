import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import '../../domain/repositories/therapists_repository.dart';
import 'therapists_state.dart';

class TherapistsCubit extends Cubit<TherapistsState> {
  final TherapistsRepository _repo;
  PaginationQueryParamsDto _dto;

  TherapistsCubit(this._repo, PaginationQueryParamsDto dto)
    : _dto = dto,
      super(const TherapistsInitial());

  Future<void> loadInitial({PaginationQueryParamsDto? dto}) async {
    _dto = (dto ?? _dto).copyWith(offset: 0);
    emit(const TherapistsLoading());

    final result = await _repo.getTherapists(_dto);
    result.fold(
      (failure) => emit(TherapistsError(failure)),
      (page) => emit(
        TherapistsLoaded(
          therapists: page.items,
          total: page.total,
          hasNext: page.hasNext,
        ),
      ),
    );
  }

  Future<void> loadNext() async {
    final current = state;
    if (current is! TherapistsLoaded) {
      return loadInitial();
    }
    if (current.isLoadingMore || !current.hasNext) return;

    emit(current.copyWith(isLoadingMore: true, clearLoadMoreFailure: true));

    final nextDto = _dto.copyWith(offset: current.therapists.length);
    _dto = nextDto;

    final result = await _repo.getTherapists(nextDto);
    result.fold(
      (failure) => emit(
        current.copyWith(isLoadingMore: false, loadMoreFailure: failure),
      ),
      (page) => emit(
        current.copyWith(
          therapists: [...current.therapists, ...page.items],
          total: page.total,
          hasNext: page.hasNext,
          isLoadingMore: false,
          clearLoadMoreFailure: true,
        ),
      ),
    );
  }
}
