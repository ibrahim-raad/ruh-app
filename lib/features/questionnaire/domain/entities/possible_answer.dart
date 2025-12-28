import 'package:freezed_annotation/freezed_annotation.dart';

part 'possible_answer.freezed.dart';
part 'possible_answer.g.dart';

@freezed
abstract class PossibleAnswer with _$PossibleAnswer {
  const factory PossibleAnswer({
    required String id,
    required String answer,
    @JsonKey(name: 'question_id') required String questionId,
  }) = _PossibleAnswer;

  factory PossibleAnswer.fromJson(Map<String, dynamic> json) =>
      _$PossibleAnswerFromJson(json);
}
