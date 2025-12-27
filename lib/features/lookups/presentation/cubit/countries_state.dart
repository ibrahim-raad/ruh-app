import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/features/lookups/domain/entities/country.dart';

sealed class CountriesState {}

class CountriesInitial extends CountriesState {}

class CountriesLoading extends CountriesState {}

class CountriesLoaded extends CountriesState {
  final List<Country> countries;
  final int total;
  final bool hasNext;
  final bool isLoadingMore;
  final Failure? loadMoreFailure;

  CountriesLoaded({
    required this.countries,
    required this.total,
    required this.hasNext,
    this.isLoadingMore = false,
    this.loadMoreFailure,
  });

  CountriesLoaded copyWith({
    List<Country>? countries,
    int? total,
    bool? hasNext,
    bool? isLoadingMore,
    Failure? loadMoreFailure,
    bool clearLoadMoreFailure = false,
  }) {
    final Failure? nextLoadMoreFailure = clearLoadMoreFailure
        ? null
        : (loadMoreFailure ?? this.loadMoreFailure);

    return CountriesLoaded(
      countries: countries ?? this.countries,
      total: total ?? this.total,
      hasNext: hasNext ?? this.hasNext,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      loadMoreFailure: nextLoadMoreFailure,
    );
  }
}

class CountriesError extends CountriesState {
  final Failure failure;
  CountriesError({required this.failure});
}
