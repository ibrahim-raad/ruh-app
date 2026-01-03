import 'package:flutter/widgets.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/features/lookups/domain/entities/country.dart';
import 'package:ruh/features/lookups/domain/entities/language.dart';
import 'package:ruh/features/lookups/presentation/cubit/countries_cubit.dart';
import 'package:ruh/features/lookups/presentation/cubit/countries_state.dart';
import 'package:ruh/features/lookups/presentation/cubit/languages_cubit.dart';
import 'package:ruh/features/lookups/presentation/cubit/languages_state.dart';
import 'package:ruh/shared/widgets/paginated_single_select_bottom_sheet.dart';

Future<Country?> showCountryPicker(
  BuildContext context, {
  Country? initialCountry,
  int pageSize = 20,
}) {
  return PaginatedSingleSelectBottomSheet.show<
    Country,
    CountriesCubit,
    CountriesState
  >(
    context,
    initialValue: initialCountry,
    pageSize: pageSize,
    createCubit: (dto) => getIt<CountriesCubit>(param1: dto),
    loadInitial: (cubit, {dto}) => cubit.loadInitial(dto: dto),
    loadNext: (cubit) => cubit.loadNext(),
    isLoading: (s) => s is CountriesLoading,
    isError: (s) => s is CountriesError,
    errorText: (s) => (s as CountriesError).failure.message,
    isLoaded: (s) => s is CountriesLoaded,
    items: (s) => (s as CountriesLoaded).countries,
    isLoadingMore: (s) => (s as CountriesLoaded).isLoadingMore,
    searchLabel: context.tr.search,
    cancelLabel: context.tr.cancel,
    noResultsText: context.tr.no_results,
    searchQueryKey: 'name',
    title: (c) => c.name,
    isSelected: (c, selected) => selected != null && selected.id == c.id,
  );
}

Future<Language?> showLanguagePicker(
  BuildContext context, {
  Language? initialLanguage,
  int pageSize = 20,
}) {
  return PaginatedSingleSelectBottomSheet.show<
    Language,
    LanguagesCubit,
    LanguagesState
  >(
    context,
    initialValue: initialLanguage,
    pageSize: pageSize,
    createCubit: (dto) => getIt<LanguagesCubit>(param1: dto),
    loadInitial: (cubit, {dto}) => cubit.loadInitial(dto: dto),
    loadNext: (cubit) => cubit.loadNext(),
    isLoading: (s) => s is LanguagesLoading,
    isError: (s) => s is LanguagesError,
    errorText: (s) => (s as LanguagesError).failure.message,
    isLoaded: (s) => s is LanguagesLoaded,
    items: (s) => (s as LanguagesLoaded).languages,
    isLoadingMore: (s) => (s as LanguagesLoaded).isLoadingMore,
    searchLabel: context.tr.search,
    cancelLabel: context.tr.cancel,
    noResultsText: context.tr.no_results,
    searchQueryKey: 'name',
    title: (l) => l.name,
    subtitle: (l) => l.code,
    isSelected: (l, selected) => selected != null && selected.id == l.id,
  );
}
