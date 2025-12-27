import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/features/lookups/domain/entities/language.dart';
import 'package:ruh/features/lookups/presentation/cubit/languages_cubit.dart';
import 'package:ruh/features/lookups/presentation/cubit/languages_state.dart';
import 'package:ruh/shared/widgets/app_loader.dart';

class LanguageSelection {
  final Language language;
  final bool isPrimary;

  const LanguageSelection({required this.language, required this.isPrimary});

  LanguageSelection copyWith({Language? language, bool? isPrimary}) =>
      LanguageSelection(
        language: language ?? this.language,
        isPrimary: isPrimary ?? this.isPrimary,
      );
}

class LanguagesPickerBottomSheet extends StatefulWidget {
  final List<LanguageSelection> initialSelections;
  final int pageSize;

  const LanguagesPickerBottomSheet({
    super.key,
    required this.initialSelections,
    this.pageSize = 20,
  });

  static Future<List<LanguageSelection>?> show(
    BuildContext context, {
    required List<LanguageSelection> initialSelections,
    int pageSize = 20,
  }) {
    return showModalBottomSheet<List<LanguageSelection>?>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (ctx) => LanguagesPickerBottomSheet(
        initialSelections: initialSelections,
        pageSize: pageSize,
      ),
    );
  }

  @override
  State<LanguagesPickerBottomSheet> createState() =>
      _LanguagesPickerBottomSheetState();
}

class _LanguagesPickerBottomSheetState
    extends State<LanguagesPickerBottomSheet> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _debounce;

  late List<LanguageSelection> _selections;
  late final LanguagesCubit _cubit;

  @override
  void initState() {
    super.initState();
    _selections = [...widget.initialSelections];
    _cubit = getIt<LanguagesCubit>(
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

  int _indexOf(Language language) =>
      _selections.indexWhere((s) => s.language.id == language.id);

  bool _isSelected(Language language) => _indexOf(language) != -1;

  bool _isPrimary(Language language) {
    final idx = _indexOf(language);
    return idx != -1 && _selections[idx].isPrimary;
  }

  void _ensureExactlyOnePrimary() {
    if (_selections.isEmpty) return;
    final primaryCount = _selections.where((s) => s.isPrimary).length;
    if (primaryCount == 1) return;
    _selections = [
      _selections.first.copyWith(isPrimary: true),
      ..._selections.skip(1).map((s) => s.copyWith(isPrimary: false)),
    ];
  }

  void _toggleSelected(Language language, bool selected) {
    final idx = _indexOf(language);
    setState(() {
      if (selected) {
        if (idx == -1) {
          final shouldBePrimary = _selections.isEmpty;
          _selections.add(
            LanguageSelection(language: language, isPrimary: shouldBePrimary),
          );
        }
      } else {
        if (idx != -1) {
          final wasPrimary = _selections[idx].isPrimary;
          _selections.removeAt(idx);
          if (wasPrimary) _ensureExactlyOnePrimary();
        }
      }
    });
  }

  void _makePrimary(Language language) {
    final idx = _indexOf(language);
    if (idx == -1) return;
    setState(() {
      _selections = _selections
          .map((s) => s.copyWith(isPrimary: s.language.id == language.id))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomInset),
      child: SizedBox(
        height: 0.85.sh,
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
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 8.h),
                child: Row(
                  children: [
                    const Icon(Icons.star, size: 18),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Text(
                        context.tr.primary_hint,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<LanguagesCubit, LanguagesState>(
                  builder: (context, state) {
                    if (state is LanguagesLoading) {
                      return const Center(child: AppLoader());
                    }
                    if (state is LanguagesError) {
                      return Center(child: Text(state.failure.message));
                    }
                    if (state is LanguagesLoaded) {
                      if (state.languages.isEmpty) {
                        return Center(child: Text(context.tr.no_results));
                      }

                      return ListView.separated(
                        controller: _scrollController,
                        itemCount:
                            state.languages.length +
                            (state.isLoadingMore ? 1 : 0),
                        separatorBuilder: (context, index) =>
                            Divider(height: 1.h),
                        itemBuilder: (context, index) {
                          if (index >= state.languages.length) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              child: const Center(child: AppLoader()),
                            );
                          }

                          final language = state.languages[index];
                          final selected = _isSelected(language);
                          final primary = _isPrimary(language);

                          return ListTile(
                            title: Text(language.name),
                            subtitle: Text(language.code),
                            leading: Checkbox(
                              value: selected,
                              onChanged: (v) =>
                                  _toggleSelected(language, v ?? false),
                            ),
                            trailing: selected
                                ? IconButton(
                                    tooltip: context.tr.make_primary,
                                    icon: Icon(
                                      primary ? Icons.star : Icons.star_border,
                                    ),
                                    onPressed: () => _makePrimary(language),
                                  )
                                : null,
                            onTap: () => _toggleSelected(language, !selected),
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
                    SizedBox(width: 12.w),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(_ensureExactlyOnePrimary);
                          Navigator.of(context).pop(_selections);
                        },
                        child: Text(context.tr.done),
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
