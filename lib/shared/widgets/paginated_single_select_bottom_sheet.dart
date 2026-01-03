import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/shared/widgets/app_loader.dart';

class PaginatedSingleSelectBottomSheet<
  T,
  CubitT extends BlocBase<StateT>,
  StateT
>
    extends StatefulWidget {
  final T? initialValue;
  final int pageSize;

  // Cubit lifecycle
  final CubitT Function(PaginationQueryParamsDto dto) createCubit;
  final Future<void> Function(CubitT cubit, {PaginationQueryParamsDto? dto})
  loadInitial;
  final Future<void> Function(CubitT cubit) loadNext;

  // State extractors
  final bool Function(StateT state) isLoading;
  final bool Function(StateT state) isError;
  final String Function(StateT state) errorText;
  final bool Function(StateT state) isLoaded;
  final List<T> Function(StateT state) items;
  final bool Function(StateT state) isLoadingMore;

  // Rendering
  final String searchLabel;
  final String cancelLabel;
  final String noResultsText;
  final String searchQueryKey;
  final String Function(T item) title;
  final String? Function(T item)? subtitle;
  final bool Function(T item, T? selected) isSelected;

  const PaginatedSingleSelectBottomSheet({
    super.key,
    required this.initialValue,
    required this.pageSize,
    required this.createCubit,
    required this.loadInitial,
    required this.loadNext,
    required this.isLoading,
    required this.isError,
    required this.errorText,
    required this.isLoaded,
    required this.items,
    required this.isLoadingMore,
    required this.searchLabel,
    required this.cancelLabel,
    required this.noResultsText,
    required this.searchQueryKey,
    required this.title,
    this.subtitle,
    required this.isSelected,
  });

  static Future<T?> show<T, CubitT extends BlocBase<StateT>, StateT>(
    BuildContext context, {
    required T? initialValue,
    int pageSize = 20,
    required CubitT Function(PaginationQueryParamsDto dto) createCubit,
    required Future<void> Function(
      CubitT cubit, {
      PaginationQueryParamsDto? dto,
    })
    loadInitial,
    required Future<void> Function(CubitT cubit) loadNext,
    required bool Function(StateT state) isLoading,
    required bool Function(StateT state) isError,
    required String Function(StateT state) errorText,
    required bool Function(StateT state) isLoaded,
    required List<T> Function(StateT state) items,
    required bool Function(StateT state) isLoadingMore,
    required String searchLabel,
    required String cancelLabel,
    required String noResultsText,
    String searchQueryKey = 'name',
    required String Function(T item) title,
    String? Function(T item)? subtitle,
    required bool Function(T item, T? selected) isSelected,
  }) {
    return showModalBottomSheet<T?>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (_) => PaginatedSingleSelectBottomSheet<T, CubitT, StateT>(
        initialValue: initialValue,
        pageSize: pageSize,
        createCubit: createCubit,
        loadInitial: loadInitial,
        loadNext: loadNext,
        isLoading: isLoading,
        isError: isError,
        errorText: errorText,
        isLoaded: isLoaded,
        items: items,
        isLoadingMore: isLoadingMore,
        searchLabel: searchLabel,
        cancelLabel: cancelLabel,
        noResultsText: noResultsText,
        searchQueryKey: searchQueryKey,
        title: title,
        subtitle: subtitle,
        isSelected: isSelected,
      ),
    );
  }

  @override
  State<PaginatedSingleSelectBottomSheet<T, CubitT, StateT>> createState() =>
      _PaginatedSingleSelectBottomSheetState<T, CubitT, StateT>();
}

class _PaginatedSingleSelectBottomSheetState<
  T,
  CubitT extends BlocBase<StateT>,
  StateT
>
    extends State<PaginatedSingleSelectBottomSheet<T, CubitT, StateT>> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _debounce;
  late final CubitT _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = widget.createCubit(
      PaginationQueryParamsDto(limit: widget.pageSize),
    );
    widget.loadInitial(_cubit);
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
      widget.loadNext(_cubit);
    }
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      final trimmed = value.trim();
      final dto = PaginationQueryParamsDto(
        offset: 0,
        limit: widget.pageSize,
        queryParams: trimmed.isEmpty ? null : {widget.searchQueryKey: trimmed},
      );
      widget.loadInitial(_cubit, dto: dto);
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
                    labelText: widget.searchLabel,
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              Expanded(
                child: BlocBuilder<CubitT, StateT>(
                  builder: (context, state) {
                    if (widget.isLoading(state)) {
                      return const Center(child: AppLoader());
                    }
                    if (widget.isError(state)) {
                      return Center(child: Text(widget.errorText(state)));
                    }
                    if (!widget.isLoaded(state)) {
                      return const SizedBox();
                    }

                    final items = widget.items(state);
                    if (items.isEmpty) {
                      return Center(child: Text(widget.noResultsText));
                    }

                    final loadingMore = widget.isLoadingMore(state);

                    return ListView.separated(
                      controller: _scrollController,
                      itemCount: items.length + (loadingMore ? 1 : 0),
                      separatorBuilder: (_, _) => Divider(height: 1.h),
                      itemBuilder: (context, index) {
                        if (index >= items.length) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            child: const Center(child: AppLoader()),
                          );
                        }

                        final item = items[index];
                        final selected = widget.isSelected(
                          item,
                          widget.initialValue,
                        );

                        return ListTile(
                          title: Text(widget.title(item)),
                          subtitle: widget.subtitle == null
                              ? null
                              : Text(widget.subtitle!(item) ?? ''),
                          trailing: selected ? const Icon(Icons.check) : null,
                          onTap: () => Navigator.of(context).pop(item),
                        );
                      },
                    );
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
                        child: Text(widget.cancelLabel),
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
