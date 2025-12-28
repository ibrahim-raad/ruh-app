import 'package:freezed_annotation/freezed_annotation.dart';
part 'question.freezed.dart';
part 'question.g.dart';

@freezed
abstract class Question with _$Question {
  const factory Question({
    required String id,
    required String question,
    required double order,
    required QuestionType type,
    @JsonKey(name: 'questionnaire_id') required String questionnaireId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum QuestionType { multipleSelect, singleSelect, text, scale }
