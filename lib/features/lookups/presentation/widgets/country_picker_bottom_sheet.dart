import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/features/lookups/domain/entities/country.dart';
import 'package:ruh/features/lookups/presentation/cubit/countries_cubit.dart';
import 'package:ruh/features/lookups/presentation/cubit/countries_state.dart';
import 'package:ruh/shared/widgets/app_loader.dart';

class CountryPickerBottomSheet extends StatefulWidget {
  final Country? initialCountry;
  final int pageSize;

  const CountryPickerBottomSheet({
    super.key,
    this.initialCountry,
    this.pageSize = 20,
  });

  static Future<Country?> show(
    BuildContext context, {
    Country? initialCountry,
    int pageSize = 20,
  }) {
    return showModalBottomSheet<Country?>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (ctx) => CountryPickerBottomSheet(
        initialCountry: initialCountry,
        pageSize: pageSize,
      ),
    );
  }

  @override
  State<CountryPickerBottomSheet> createState() =>
      _CountryPickerBottomSheetState();
}

class _CountryPickerBottomSheetState extends State<CountryPickerBottomSheet> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _debounce;
  late final CountriesCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<CountriesCubit>(
      param1: PaginationQueryParamsDto(limit: widget.pageSize),
    )..loadInitial();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    _scrollController.dispose();
    _cubit.close();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final max = _scrollController.position.maxScrollExtent;
    final current = _scrollController.position.pixels;
    if (current >= max - 200) {
      _cubit.loadNext();
    }
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      final dto = PaginationQueryParamsDto(
        offset: 0,
        limit: widget.pageSize,
        queryParams: value.trim().isEmpty ? null : {'name': value.trim()},
      );
      _cubit.loadInitial(dto: dto);
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomInset),
      child: SizedBox(
        height: 0.8.sh,
        child: BlocProvider.value(
          value: _cubit,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 8.h),
                child: TextField(
                  controller: _searchController,
                  onChanged: _onSearchChanged,
                  decoration: InputDecoration(
                    labelText: context.tr.search,
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              Expanded(
                child: BlocBuilder<CountriesCubit, CountriesState>(
                  builder: (context, state) {
                    if (state is CountriesLoading) {
                      return const Center(child: AppLoader());
                    }
                    if (state is CountriesError) {
                      return Center(child: Text(state.failure.message));
                    }
                    if (state is CountriesLoaded) {
                      if (state.countries.isEmpty) {
                        return Center(child: Text(context.tr.no_results));
                      }

                      return ListView.separated(
                        controller: _scrollController,
                        itemCount:
                            state.countries.length +
                            (state.isLoadingMore ? 1 : 0),
                        separatorBuilder: (_, _) => Divider(height: 1.h),
                        itemBuilder: (context, index) {
                          if (index >= state.countries.length) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              child: const Center(child: AppLoader()),
                            );
                          }

                          final country = state.countries[index];
                          final selected =
                              widget.initialCountry?.id == country.id;

                          return ListTile(
                            title: Text(country.name),
                            trailing: selected ? const Icon(Icons.check) : null,
                            onTap: () => Navigator.of(context).pop(country),
                          );
                        },
                      );
                    }
                    return const SizedBox();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 16.h),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(context.tr.cancel),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
