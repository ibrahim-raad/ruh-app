import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/journal/domain/dtos/create_reflection_dto.dart';
import 'package:ruh/features/journal/domain/dtos/update_reflection_dto.dart';
import 'package:ruh/features/journal/domain/entities/reflection.dart';
import 'package:ruh/features/journal/domain/repo/journal_repo.dart';
import 'journal_state.dart';

class JournalCubit extends Cubit<JournalState> {
  final JournalRepository _repo;

  PaginationQueryParamsDto _dto;

  JournalCubit(
    this._repo, {
    PaginationQueryParamsDto initialDto = const PaginationQueryParamsDto(
      limit: 10,
      sort: 'created_at DESC',
    ),
    required DateTime today,
  }) : _dto = initialDto,
       super(JournalState.initial(today: today));

  String _isoDate(DateTime d) => DateFormat('yyyy-MM-dd').format(d);
  DateTime _dateOnly(DateTime d) => DateTime(d.year, d.month, d.day);

  Map<String, dynamic> _buildQueryParams({
    required DateTime selectedDay,
    required String searchText,
    required JournalMood? filterMood,
  }) {
    final query = <String, dynamic>{'title': _isoDate(selectedDay)};
    final q = searchText.trim();
    if (q.isNotEmpty) query['content'] = q;
    if (filterMood != null) query['mood'] = filterMood.name.toUpperCase();
    return query;
  }

  PaginationQueryParamsDto _dtoForState({
    required int offset,
    required DateTime selectedDay,
    required String searchText,
    required JournalMood? filterMood,
  }) {
    return _dto.copyWith(
      offset: offset,
      queryParams: _buildQueryParams(
        selectedDay: selectedDay,
        searchText: searchText,
        filterMood: filterMood,
      ),
    );
  }

  Future<void> loadInitial() async {
    emit(state.copyWith(isLoading: true, failure: null, loadMoreFailure: null));

    final dto = _dtoForState(
      offset: 0,
      selectedDay: state.selectedDay,
      searchText: state.searchText,
      filterMood: state.filterMood,
    );
    _dto = dto;

    final result = await _repo.getReflections(dto);
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, failure: failure)),
      (page) => emit(
        state.copyWith(
          isLoading: false,
          items: page.items,
          hasNext: page.hasNext,
          failure: null,
          loadMoreFailure: null,
        ),
      ),
    );
  }

  Future<void> refresh() => loadInitial();

  Future<void> loadNext() async {
    if (state.isLoading || state.isLoadingMore || !state.hasNext) return;

    emit(state.copyWith(isLoadingMore: true, loadMoreFailure: null));

    final nextDto = _dtoForState(
      offset: state.items.length,
      selectedDay: state.selectedDay,
      searchText: state.searchText,
      filterMood: state.filterMood,
    );
    _dto = nextDto;

    final result = await _repo.getReflections(nextDto);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoadingMore: false, loadMoreFailure: failure)),
      (page) => emit(
        state.copyWith(
          items: [...state.items, ...page.items],
          hasNext: page.hasNext,
          isLoadingMore: false,
          loadMoreFailure: null,
        ),
      ),
    );
  }

  void setFocusedDay(DateTime day) {
    emit(state.copyWith(focusedDay: _dateOnly(day)));
  }

  Future<void> selectDay(DateTime day) async {
    final d = _dateOnly(day);
    emit(state.copyWith(selectedDay: d, focusedDay: d, editingId: null));
    await loadInitial();
  }

  void setDraftMood(JournalMood mood) => emit(state.copyWith(draftMood: mood));
  void setDraftContent(String content) =>
      emit(state.copyWith(draftContent: content));

  Future<void> setSearchText(String text) async {
    emit(state.copyWith(searchText: text));
    await loadInitial();
  }

  Future<void> setFilterMood(JournalMood? mood) async {
    emit(state.copyWith(filterMood: mood));
    await loadInitial();
  }

  Future<void> clearFilters() async {
    emit(state.copyWith(searchText: '', filterMood: null));
    await loadInitial();
  }

  void enterEditMode(Reflection r) {
    emit(
      state.copyWith(
        editingId: r.id,
        editingVersion: r.version,
        draftContent: r.content,
        draftMood: r.mood,
      ),
    );
  }

  void exitEditMode() {
    emit(state.copyWith(editingId: null));
  }

  void clearDraft() {
    emit(
      state.copyWith(
        draftContent: '',
        draftMood: null,
        editingId: null,
        editingVersion: null,
      ),
    );
  }

  bool get canSave =>
      state.draftMood != null || state.draftContent.trim().isNotEmpty;

  JournalMood get _resolvedMood => state.draftMood ?? JournalMood.okay;

  CreateReflectionDto _buildDto() => CreateReflectionDto(
    date: _isoDate(state.selectedDay),
    content: state.draftContent.trim(),
    mood: _resolvedMood,
  );

  UpdateReflectionDto _buildUpdateDto({required int version}) =>
      UpdateReflectionDto(
        version: version,
        date: _isoDate(state.selectedDay),
        content: state.draftContent.trim(),
        mood: _resolvedMood,
      );

  Future<void> save() async {
    if (!canSave || state.isSaving) return;

    emit(state.copyWith(isSaving: true, failure: null));

    final dto = _buildDto();
    final editingId = state.editingId;
    final editingVersion = state.editingVersion;

    if (editingId != null && editingVersion == null) {
      emit(
        state.copyWith(
          isSaving: false,
          failure: const BadRequestFailure('missing_version'),
        ),
      );
      return;
    }

    final result = editingId == null
        ? await _repo.createReflection(dto)
        : await _repo.updateReflection(
            editingId,
            _buildUpdateDto(version: editingVersion!),
          );

    await result.fold(
      (failure) async {
        emit(state.copyWith(isSaving: false, failure: failure));
      },
      (_) async {
        emit(
          state.copyWith(
            isSaving: false,
            failure: null,
            lastAction: editingId == null
                ? JournalLastAction.created
                : JournalLastAction.updated,
            actionNonce: state.actionNonce + 1,
            editingId: null,
          ),
        );
        clearDraft();
        await loadInitial();
      },
    );
  }

  Future<void> deleteById(String id) async {
    if (state.isSaving) return;
    emit(state.copyWith(isSaving: true, failure: null));

    final result = await _repo.deleteReflection(id);
    await result.fold(
      (failure) async {
        emit(state.copyWith(isSaving: false, failure: failure));
      },
      (_) async {
        emit(
          state.copyWith(
            isSaving: false,
            failure: null,
            lastAction: JournalLastAction.deleted,
            actionNonce: state.actionNonce + 1,
          ),
        );
        if (state.editingId == id) {
          clearDraft();
        }
        await loadInitial();
      },
    );
  }
}
