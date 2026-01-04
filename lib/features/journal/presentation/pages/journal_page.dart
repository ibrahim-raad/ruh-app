import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ruh/core/di/injection.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/core/utils/failure_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/journal/domain/entities/reflection.dart';
import 'package:ruh/features/journal/domain/repo/journal_repo.dart';
import 'package:ruh/features/journal/presentation/cubit/journal_cubit.dart';
import 'package:ruh/features/journal/presentation/cubit/journal_state.dart';
import 'package:ruh/shared/widgets/app_loader.dart';
import '../widgets/journal_calendar_card.dart';
import '../widgets/empty_state_card.dart';
import '../widgets/history_filters_row.dart';
import '../widgets/history_header.dart';
import '../widgets/inline_error_card.dart';
import '../widgets/journal_header.dart';
import '../widgets/mood_picker.dart';
import '../widgets/reflection_details_sheet.dart';
import '../widgets/reflection_input_card.dart';
import '../widgets/reflection_list_item.dart';

class JournalPage extends StatefulWidget {
  final DateTime? initialDay;

  const JournalPage({super.key, this.initialDay});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  late final JournalCubit _cubit;

  final _scrollController = ScrollController();
  final _searchController = TextEditingController();
  final _contentController = TextEditingController();

  Timer? _debounce;
  bool _syncingController = false;
  int _lastActionToastNonce = -1;

  DateTime _dateOnly(DateTime d) => DateTime(d.year, d.month, d.day);
  String _isoDate(DateTime d) => DateFormat('yyyy-MM-dd').format(d);

  @override
  void initState() {
    super.initState();

    final repo = getIt<JournalRepository>();
    _cubit = JournalCubit(repo, today: DateTime.now());
    final initial = widget.initialDay;
    if (initial != null) {
      final today = DateTime.now();
      final last = DateTime(today.year, today.month, today.day);
      final d = DateTime(initial.year, initial.month, initial.day);
      _cubit.selectDay(d.isAfter(last) ? last : d);
    } else {
      _cubit.loadInitial();
    }

    _scrollController.addListener(() {
      if (!_scrollController.hasClients) return;
      final max = _scrollController.position.maxScrollExtent;
      final current = _scrollController.position.pixels;
      if (current >= max - 250) {
        _cubit.loadNext();
      }
    });

    _contentController.addListener(() {
      if (_syncingController) return;
      _cubit.setDraftContent(_contentController.text);
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _scrollController.dispose();
    _searchController.dispose();
    _contentController.dispose();
    _cubit.close();
    super.dispose();
  }

  Future<void> _onSearchChanged(String value) async {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      _cubit.setSearchText(value);
    });
  }

  Future<void> _openDetailsSheet(Reflection r) async {
    await showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => ReflectionDetailsSheet(
        reflection: r,
        onEdit: () {
          Navigator.of(context).pop();
          _cubit.enterEditMode(r);
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut,
          );
        },
        onDelete: () async {
          Navigator.of(context).pop();
          final confirmed = await _confirmDelete(r);
          if (confirmed != true) return;
          await _cubit.deleteById(r.id);
        },
      ),
    );
  }

  Future<bool?> _confirmDelete(Reflection r) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete reflection?'),
        content: const Text('This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: context.error),
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocListener<JournalCubit, JournalState>(
        listenWhen: (prev, curr) =>
            prev.actionNonce != curr.actionNonce ||
            prev.failure != curr.failure ||
            prev.draftContent != curr.draftContent,
        listener: (context, state) {
          final failure = state.failure;
          if (failure != null) {
            AppToast.showError(context, failure.getErrorMessage(context));
          }

          if (_contentController.text != state.draftContent) {
            _syncingController = true;
            _contentController.text = state.draftContent;
            _contentController.selection = TextSelection.fromPosition(
              TextPosition(offset: _contentController.text.length),
            );
            _syncingController = false;
          }

          final action = state.lastAction;
          if (action != null && state.actionNonce != _lastActionToastNonce) {
            _lastActionToastNonce = state.actionNonce;
            final msg = switch (action) {
              JournalLastAction.created => 'Saved',
              JournalLastAction.updated => 'Updated',
              JournalLastAction.deleted => 'Deleted',
            };
            AppToast.showSuccess(context, msg);
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: BlocBuilder<JournalCubit, JournalState>(
              builder: (context, state) {
                final lastSelectable = _dateOnly(DateTime.now());
                final isEditing = state.editingId != null;

                return Stack(
                  children: [
                    RefreshIndicator(
                      onRefresh: () => _cubit.refresh(),
                      child: CustomScrollView(
                        controller: _scrollController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        slivers: [
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 0),
                              child: Column(
                                children: [
                                  const JournalHeader(),
                                  SizedBox(height: 18.h),
                                  JournalCalendarCard(
                                    focusedDay: state.focusedDay,
                                    selectedDay: state.selectedDay,
                                    lastSelectableDay: lastSelectable,
                                    onFocusedDayChanged: _cubit.setFocusedDay,
                                    onSelectedDayChanged: _cubit.selectDay,
                                  ),
                                  SizedBox(height: 18.h),
                                  MoodPicker(
                                    selected: state.draftMood,
                                    onSelected: _cubit.setDraftMood,
                                  ),
                                  SizedBox(height: 18.h),
                                  ReflectionInputCard(
                                    controller: _contentController,
                                    charCount:
                                        state.draftContent.characters.length,
                                  ),
                                  SizedBox(height: 18.h),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 52.h,
                                    child: ElevatedButton(
                                      onPressed: _cubit.canSave
                                          ? () => _cubit.save()
                                          : null,
                                      child: Text(
                                        isEditing
                                            ? 'update reflection'
                                            : 'save reflection',
                                      ),
                                    ),
                                  ),
                                  if (isEditing) ...[
                                    SizedBox(height: 10.h),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 48.h,
                                      child: OutlinedButton(
                                        onPressed: () {
                                          _cubit.clearDraft();
                                        },
                                        child: const Text('cancel edit'),
                                      ),
                                    ),
                                  ],
                                  SizedBox(height: 18.h),
                                  HistoryHeader(
                                    dateLabel: _isoDate(state.selectedDay),
                                  ),
                                  SizedBox(height: 12.h),
                                  HistoryFiltersRow(
                                    searchController: _searchController,
                                    selectedMood: state.filterMood,
                                    onSearchChanged: _onSearchChanged,
                                    onMoodChanged: _cubit.setFilterMood,
                                    onClear: () async {
                                      _searchController.clear();
                                      await _cubit.clearFilters();
                                    },
                                  ),
                                  SizedBox(height: 12.h),
                                ],
                              ),
                            ),
                          ),
                          if (state.isLoading && state.items.isEmpty)
                            const SliverFillRemaining(
                              hasScrollBody: false,
                              child: Center(child: AppLoader()),
                            )
                          else if (state.items.isEmpty)
                            SliverFillRemaining(
                              hasScrollBody: false,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(
                                  20.w,
                                  20.h,
                                  20.w,
                                  24.h,
                                ),
                                child: EmptyStateCard(
                                  title: 'no reflections yet',
                                  subtitle:
                                      'write one above to get started for this date.',
                                ),
                              ),
                            )
                          else
                            SliverPadding(
                              padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 24.h),
                              sliver: SliverList(
                                delegate: SliverChildListDelegate([
                                  for (final r in state.items) ...[
                                    ReflectionListItem(
                                      reflection: r,
                                      onTap: () => _openDetailsSheet(r),
                                      onEdit: () {
                                        _cubit.enterEditMode(r);
                                        _scrollController.animateTo(
                                          0,
                                          duration: const Duration(
                                            milliseconds: 250,
                                          ),
                                          curve: Curves.easeOut,
                                        );
                                      },
                                      onDelete: () async {
                                        final confirmed = await _confirmDelete(
                                          r,
                                        );
                                        if (confirmed != true) return;
                                        await _cubit.deleteById(r.id);
                                      },
                                    ),
                                    SizedBox(height: 12.h),
                                  ],
                                  if (state.isLoadingMore)
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 8,
                                      ),
                                      child: Center(child: AppLoader()),
                                    ),
                                  if (state.loadMoreFailure != null) ...[
                                    SizedBox(height: 12.h),
                                    InlineErrorCard(
                                      message: state.loadMoreFailure!
                                          .getErrorMessage(context),
                                    ),
                                  ],
                                ]),
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (state.isSaving)
                      Container(
                        color: Colors.black.withValues(alpha: 0.25),
                        child: const Center(child: AppLoader()),
                      ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
