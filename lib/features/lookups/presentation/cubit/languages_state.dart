import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/features/lookups/domain/entities/language.dart';

sealed class LanguagesState {}

class LanguagesInitial extends LanguagesState {}

class LanguagesLoading extends LanguagesState {}

class LanguagesLoaded extends LanguagesState {
  final List<Language> languages;
  final int total;
  final bool hasNext;
  final bool isLoadingMore;
  final Failure? loadMoreFailure;

  LanguagesLoaded({
    required this.languages,
    required this.total,
    required this.hasNext,
    this.isLoadingMore = false,
    this.loadMoreFailure,
  });

  LanguagesLoaded copyWith({
    List<Language>? languages,
    int? total,
    bool? hasNext,
    bool? isLoadingMore,
    Failure? loadMoreFailure,
    bool clearLoadMoreFailure = false,
  }) {
    final Failure? nextLoadMoreFailure = clearLoadMoreFailure
        ? null
        : (loadMoreFailure ?? this.loadMoreFailure);

    return LanguagesLoaded(
      languages: languages ?? this.languages,
      total: total ?? this.total,
      hasNext: hasNext ?? this.hasNext,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      loadMoreFailure: nextLoadMoreFailure,
    );
  }
}

class LanguagesError extends LanguagesState {
  final Failure failure;
  LanguagesError({required this.failure});
}
