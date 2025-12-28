import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/questionnaire.dart';

part 'questionnaire_event.freezed.dart';

@freezed
class QuestionnaireEvent with _$QuestionnaireEvent {
  const factory QuestionnaireEvent.started(QuestionnaireType type) = _Started;

  const factory QuestionnaireEvent.optionToggled({
    required String questionId,
    required String possibleAnswerId,
    required bool selected,
  }) = _OptionToggled;

  const factory QuestionnaireEvent.textChanged({
    required String questionId,
    required String text,
  }) = _TextChanged;

  const factory QuestionnaireEvent.scaleChanged({
    required String questionId,
    required int value,
  }) = _ScaleChanged;

  const factory QuestionnaireEvent.nextPressed() = _NextPressed;
  const factory QuestionnaireEvent.backPressed() = _BackPressed;
  const factory QuestionnaireEvent.finishPressed() = _FinishPressed;
}
