import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/lookups/domain/usecases/get_countries.dart';
import 'package:ruh/features/lookups/presentation/cubit/countries_state.dart';

@injectable
class CountriesCubit extends Cubit<CountriesState> {
  final GetCountries _getCountries;
  PaginationQueryParamsDto _dto;
  CountriesCubit(this._getCountries, @factoryParam PaginationQueryParamsDto dto)
    : _dto = dto,
      super(CountriesInitial());

  Future<void> load({PaginationQueryParamsDto? dto}) => loadInitial(dto: dto);

  Future<void> loadInitial({PaginationQueryParamsDto? dto}) async {
    _dto = (dto ?? _dto).copyWith(offset: 0);

    emit(CountriesLoading());
    final result = await _getCountries(_dto);
    result.fold(
      (failure) => emit(CountriesError(failure: failure)),
      (page) => emit(
        CountriesLoaded(
          countries: page.items,
          total: page.total,
          hasNext: page.hasNext,
        ),
      ),
    );
  }

  Future<void> loadNext() async {
    final current = state;
    if (current is! CountriesLoaded) {
      return loadInitial();
    }
    if (current.isLoadingMore || !current.hasNext) return;

    emit(current.copyWith(isLoadingMore: true, clearLoadMoreFailure: true));

    final nextDto = _dto.copyWith(offset: current.countries.length);
    _dto = nextDto;

    final result = await _getCountries(nextDto);
    result.fold(
      (failure) => emit(
        current.copyWith(isLoadingMore: false, loadMoreFailure: failure),
      ),
      (page) => emit(
        current.copyWith(
          countries: [...current.countries, ...page.items],
          total: page.total,
          hasNext: page.hasNext,
          isLoadingMore: false,
          clearLoadMoreFailure: true,
        ),
      ),
    );
  }
}
