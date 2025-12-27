import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/lookups/domain/usecases/get_languages.dart';
import 'package:ruh/features/lookups/presentation/cubit/languages_state.dart';

@injectable
class LanguagesCubit extends Cubit<LanguagesState> {
  final GetLanguages _getLanguages;
  PaginationQueryParamsDto _dto;

  LanguagesCubit(this._getLanguages, @factoryParam PaginationQueryParamsDto dto)
    : _dto = dto,
      super(LanguagesInitial());

  Future<void> load({PaginationQueryParamsDto? dto}) => loadInitial(dto: dto);

  Future<void> loadInitial({PaginationQueryParamsDto? dto}) async {
    _dto = (dto ?? _dto).copyWith(offset: 0);

    emit(LanguagesLoading());
    final result = await _getLanguages(_dto);
    result.fold(
      (failure) => emit(LanguagesError(failure: failure)),
      (page) => emit(
        LanguagesLoaded(
          languages: page.items,
          total: page.total,
          hasNext: page.hasNext,
        ),
      ),
    );
  }

  Future<void> loadNext() async {
    final current = state;
    if (current is! LanguagesLoaded) {
      return loadInitial();
    }
    if (current.isLoadingMore || !current.hasNext) return;

    emit(current.copyWith(isLoadingMore: true, clearLoadMoreFailure: true));

    final nextDto = _dto.copyWith(offset: current.languages.length);
    _dto = nextDto;

    final result = await _getLanguages(nextDto);
    result.fold(
      (failure) => emit(
        current.copyWith(isLoadingMore: false, loadMoreFailure: failure),
      ),
      (page) => emit(
        current.copyWith(
          languages: [...current.languages, ...page.items],
          total: page.total,
          hasNext: page.hasNext,
          isLoadingMore: false,
          clearLoadMoreFailure: true,
        ),
      ),
    );
  }
}
