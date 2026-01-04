// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'journal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JournalState {

 DateTime get selectedDay; DateTime get focusedDay; String get searchText; JournalMood? get filterMood; JournalMood? get draftMood; String get draftContent; String? get editingId; int? get editingVersion; List<Reflection> get items; bool get hasNext; bool get isLoading; bool get isLoadingMore; bool get isSaving; Failure? get failure; Failure? get loadMoreFailure; JournalLastAction? get lastAction; int get actionNonce;
/// Create a copy of JournalState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JournalStateCopyWith<JournalState> get copyWith => _$JournalStateCopyWithImpl<JournalState>(this as JournalState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JournalState&&(identical(other.selectedDay, selectedDay) || other.selectedDay == selectedDay)&&(identical(other.focusedDay, focusedDay) || other.focusedDay == focusedDay)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.filterMood, filterMood) || other.filterMood == filterMood)&&(identical(other.draftMood, draftMood) || other.draftMood == draftMood)&&(identical(other.draftContent, draftContent) || other.draftContent == draftContent)&&(identical(other.editingId, editingId) || other.editingId == editingId)&&(identical(other.editingVersion, editingVersion) || other.editingVersion == editingVersion)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadMoreFailure, loadMoreFailure) || other.loadMoreFailure == loadMoreFailure)&&(identical(other.lastAction, lastAction) || other.lastAction == lastAction)&&(identical(other.actionNonce, actionNonce) || other.actionNonce == actionNonce));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDay,focusedDay,searchText,filterMood,draftMood,draftContent,editingId,editingVersion,const DeepCollectionEquality().hash(items),hasNext,isLoading,isLoadingMore,isSaving,failure,loadMoreFailure,lastAction,actionNonce);

@override
String toString() {
  return 'JournalState(selectedDay: $selectedDay, focusedDay: $focusedDay, searchText: $searchText, filterMood: $filterMood, draftMood: $draftMood, draftContent: $draftContent, editingId: $editingId, editingVersion: $editingVersion, items: $items, hasNext: $hasNext, isLoading: $isLoading, isLoadingMore: $isLoadingMore, isSaving: $isSaving, failure: $failure, loadMoreFailure: $loadMoreFailure, lastAction: $lastAction, actionNonce: $actionNonce)';
}


}

/// @nodoc
abstract mixin class $JournalStateCopyWith<$Res>  {
  factory $JournalStateCopyWith(JournalState value, $Res Function(JournalState) _then) = _$JournalStateCopyWithImpl;
@useResult
$Res call({
 DateTime selectedDay, DateTime focusedDay, String searchText, JournalMood? filterMood, JournalMood? draftMood, String draftContent, String? editingId, int? editingVersion, List<Reflection> items, bool hasNext, bool isLoading, bool isLoadingMore, bool isSaving, Failure? failure, Failure? loadMoreFailure, JournalLastAction? lastAction, int actionNonce
});




}
/// @nodoc
class _$JournalStateCopyWithImpl<$Res>
    implements $JournalStateCopyWith<$Res> {
  _$JournalStateCopyWithImpl(this._self, this._then);

  final JournalState _self;
  final $Res Function(JournalState) _then;

/// Create a copy of JournalState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedDay = null,Object? focusedDay = null,Object? searchText = null,Object? filterMood = freezed,Object? draftMood = freezed,Object? draftContent = null,Object? editingId = freezed,Object? editingVersion = freezed,Object? items = null,Object? hasNext = null,Object? isLoading = null,Object? isLoadingMore = null,Object? isSaving = null,Object? failure = freezed,Object? loadMoreFailure = freezed,Object? lastAction = freezed,Object? actionNonce = null,}) {
  return _then(_self.copyWith(
selectedDay: null == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as DateTime,focusedDay: null == focusedDay ? _self.focusedDay : focusedDay // ignore: cast_nullable_to_non_nullable
as DateTime,searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,filterMood: freezed == filterMood ? _self.filterMood : filterMood // ignore: cast_nullable_to_non_nullable
as JournalMood?,draftMood: freezed == draftMood ? _self.draftMood : draftMood // ignore: cast_nullable_to_non_nullable
as JournalMood?,draftContent: null == draftContent ? _self.draftContent : draftContent // ignore: cast_nullable_to_non_nullable
as String,editingId: freezed == editingId ? _self.editingId : editingId // ignore: cast_nullable_to_non_nullable
as String?,editingVersion: freezed == editingVersion ? _self.editingVersion : editingVersion // ignore: cast_nullable_to_non_nullable
as int?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Reflection>,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,loadMoreFailure: freezed == loadMoreFailure ? _self.loadMoreFailure : loadMoreFailure // ignore: cast_nullable_to_non_nullable
as Failure?,lastAction: freezed == lastAction ? _self.lastAction : lastAction // ignore: cast_nullable_to_non_nullable
as JournalLastAction?,actionNonce: null == actionNonce ? _self.actionNonce : actionNonce // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [JournalState].
extension JournalStatePatterns on JournalState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JournalState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JournalState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JournalState value)  $default,){
final _that = this;
switch (_that) {
case _JournalState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JournalState value)?  $default,){
final _that = this;
switch (_that) {
case _JournalState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime selectedDay,  DateTime focusedDay,  String searchText,  JournalMood? filterMood,  JournalMood? draftMood,  String draftContent,  String? editingId,  int? editingVersion,  List<Reflection> items,  bool hasNext,  bool isLoading,  bool isLoadingMore,  bool isSaving,  Failure? failure,  Failure? loadMoreFailure,  JournalLastAction? lastAction,  int actionNonce)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JournalState() when $default != null:
return $default(_that.selectedDay,_that.focusedDay,_that.searchText,_that.filterMood,_that.draftMood,_that.draftContent,_that.editingId,_that.editingVersion,_that.items,_that.hasNext,_that.isLoading,_that.isLoadingMore,_that.isSaving,_that.failure,_that.loadMoreFailure,_that.lastAction,_that.actionNonce);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime selectedDay,  DateTime focusedDay,  String searchText,  JournalMood? filterMood,  JournalMood? draftMood,  String draftContent,  String? editingId,  int? editingVersion,  List<Reflection> items,  bool hasNext,  bool isLoading,  bool isLoadingMore,  bool isSaving,  Failure? failure,  Failure? loadMoreFailure,  JournalLastAction? lastAction,  int actionNonce)  $default,) {final _that = this;
switch (_that) {
case _JournalState():
return $default(_that.selectedDay,_that.focusedDay,_that.searchText,_that.filterMood,_that.draftMood,_that.draftContent,_that.editingId,_that.editingVersion,_that.items,_that.hasNext,_that.isLoading,_that.isLoadingMore,_that.isSaving,_that.failure,_that.loadMoreFailure,_that.lastAction,_that.actionNonce);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime selectedDay,  DateTime focusedDay,  String searchText,  JournalMood? filterMood,  JournalMood? draftMood,  String draftContent,  String? editingId,  int? editingVersion,  List<Reflection> items,  bool hasNext,  bool isLoading,  bool isLoadingMore,  bool isSaving,  Failure? failure,  Failure? loadMoreFailure,  JournalLastAction? lastAction,  int actionNonce)?  $default,) {final _that = this;
switch (_that) {
case _JournalState() when $default != null:
return $default(_that.selectedDay,_that.focusedDay,_that.searchText,_that.filterMood,_that.draftMood,_that.draftContent,_that.editingId,_that.editingVersion,_that.items,_that.hasNext,_that.isLoading,_that.isLoadingMore,_that.isSaving,_that.failure,_that.loadMoreFailure,_that.lastAction,_that.actionNonce);case _:
  return null;

}
}

}

/// @nodoc


class _JournalState implements JournalState {
  const _JournalState({required this.selectedDay, required this.focusedDay, this.searchText = '', this.filterMood, this.draftMood, this.draftContent = '', this.editingId, this.editingVersion, final  List<Reflection> items = const <Reflection>[], this.hasNext = false, this.isLoading = false, this.isLoadingMore = false, this.isSaving = false, this.failure, this.loadMoreFailure, this.lastAction, this.actionNonce = 0}): _items = items;
  

@override final  DateTime selectedDay;
@override final  DateTime focusedDay;
@override@JsonKey() final  String searchText;
@override final  JournalMood? filterMood;
@override final  JournalMood? draftMood;
@override@JsonKey() final  String draftContent;
@override final  String? editingId;
@override final  int? editingVersion;
 final  List<Reflection> _items;
@override@JsonKey() List<Reflection> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool hasNext;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool isSaving;
@override final  Failure? failure;
@override final  Failure? loadMoreFailure;
@override final  JournalLastAction? lastAction;
@override@JsonKey() final  int actionNonce;

/// Create a copy of JournalState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JournalStateCopyWith<_JournalState> get copyWith => __$JournalStateCopyWithImpl<_JournalState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JournalState&&(identical(other.selectedDay, selectedDay) || other.selectedDay == selectedDay)&&(identical(other.focusedDay, focusedDay) || other.focusedDay == focusedDay)&&(identical(other.searchText, searchText) || other.searchText == searchText)&&(identical(other.filterMood, filterMood) || other.filterMood == filterMood)&&(identical(other.draftMood, draftMood) || other.draftMood == draftMood)&&(identical(other.draftContent, draftContent) || other.draftContent == draftContent)&&(identical(other.editingId, editingId) || other.editingId == editingId)&&(identical(other.editingVersion, editingVersion) || other.editingVersion == editingVersion)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadMoreFailure, loadMoreFailure) || other.loadMoreFailure == loadMoreFailure)&&(identical(other.lastAction, lastAction) || other.lastAction == lastAction)&&(identical(other.actionNonce, actionNonce) || other.actionNonce == actionNonce));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDay,focusedDay,searchText,filterMood,draftMood,draftContent,editingId,editingVersion,const DeepCollectionEquality().hash(_items),hasNext,isLoading,isLoadingMore,isSaving,failure,loadMoreFailure,lastAction,actionNonce);

@override
String toString() {
  return 'JournalState(selectedDay: $selectedDay, focusedDay: $focusedDay, searchText: $searchText, filterMood: $filterMood, draftMood: $draftMood, draftContent: $draftContent, editingId: $editingId, editingVersion: $editingVersion, items: $items, hasNext: $hasNext, isLoading: $isLoading, isLoadingMore: $isLoadingMore, isSaving: $isSaving, failure: $failure, loadMoreFailure: $loadMoreFailure, lastAction: $lastAction, actionNonce: $actionNonce)';
}


}

/// @nodoc
abstract mixin class _$JournalStateCopyWith<$Res> implements $JournalStateCopyWith<$Res> {
  factory _$JournalStateCopyWith(_JournalState value, $Res Function(_JournalState) _then) = __$JournalStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime selectedDay, DateTime focusedDay, String searchText, JournalMood? filterMood, JournalMood? draftMood, String draftContent, String? editingId, int? editingVersion, List<Reflection> items, bool hasNext, bool isLoading, bool isLoadingMore, bool isSaving, Failure? failure, Failure? loadMoreFailure, JournalLastAction? lastAction, int actionNonce
});




}
/// @nodoc
class __$JournalStateCopyWithImpl<$Res>
    implements _$JournalStateCopyWith<$Res> {
  __$JournalStateCopyWithImpl(this._self, this._then);

  final _JournalState _self;
  final $Res Function(_JournalState) _then;

/// Create a copy of JournalState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedDay = null,Object? focusedDay = null,Object? searchText = null,Object? filterMood = freezed,Object? draftMood = freezed,Object? draftContent = null,Object? editingId = freezed,Object? editingVersion = freezed,Object? items = null,Object? hasNext = null,Object? isLoading = null,Object? isLoadingMore = null,Object? isSaving = null,Object? failure = freezed,Object? loadMoreFailure = freezed,Object? lastAction = freezed,Object? actionNonce = null,}) {
  return _then(_JournalState(
selectedDay: null == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as DateTime,focusedDay: null == focusedDay ? _self.focusedDay : focusedDay // ignore: cast_nullable_to_non_nullable
as DateTime,searchText: null == searchText ? _self.searchText : searchText // ignore: cast_nullable_to_non_nullable
as String,filterMood: freezed == filterMood ? _self.filterMood : filterMood // ignore: cast_nullable_to_non_nullable
as JournalMood?,draftMood: freezed == draftMood ? _self.draftMood : draftMood // ignore: cast_nullable_to_non_nullable
as JournalMood?,draftContent: null == draftContent ? _self.draftContent : draftContent // ignore: cast_nullable_to_non_nullable
as String,editingId: freezed == editingId ? _self.editingId : editingId // ignore: cast_nullable_to_non_nullable
as String?,editingVersion: freezed == editingVersion ? _self.editingVersion : editingVersion // ignore: cast_nullable_to_non_nullable
as int?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Reflection>,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,loadMoreFailure: freezed == loadMoreFailure ? _self.loadMoreFailure : loadMoreFailure // ignore: cast_nullable_to_non_nullable
as Failure?,lastAction: freezed == lastAction ? _self.lastAction : lastAction // ignore: cast_nullable_to_non_nullable
as JournalLastAction?,actionNonce: null == actionNonce ? _self.actionNonce : actionNonce // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
