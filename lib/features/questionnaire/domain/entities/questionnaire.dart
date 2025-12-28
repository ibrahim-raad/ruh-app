import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire.freezed.dart';
part 'questionnaire.g.dart';

@freezed
abstract class Questionnaire with _$Questionnaire {
  const factory Questionnaire({
    required String id,
    required QuestionnaireType type,
    required String title,
    String? description,
  }) = _Questionnaire;

  factory Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum QuestionnaireType {
  onboarding,
  reflection,
  postSession,
  feedback;

  String toBackendString() {
    switch (this) {
      case QuestionnaireType.onboarding:
        return 'ONBOARDING';
      case QuestionnaireType.reflection:
        return 'REFLECTION';
      case QuestionnaireType.postSession:
        return 'POST_SESSION';
      case QuestionnaireType.feedback:
        return 'FEEDBACK';
    }
  }
}
