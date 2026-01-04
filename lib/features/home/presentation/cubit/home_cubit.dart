import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/therapy_case/domain/entities/therapy_case.dart';
import 'package:ruh/features/therapy_case/domain/repositories/therapy_case_repository.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final TherapyCaseRepository _repo;

  HomeCubit(this._repo) : super(HomeState.initial());

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
  }
}
