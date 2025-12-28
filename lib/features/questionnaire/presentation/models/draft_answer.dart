import 'package:freezed_annotation/freezed_annotation.dart';

part 'draft_answer.freezed.dart';

@freezed
class DraftAnswer with _$DraftAnswer {
  const factory DraftAnswer.singleSelect(String possibleAnswerId) =
      DraftAnswerSingleSelect;
  const factory DraftAnswer.multipleSelect(Set<String> possibleAnswerIds) =
      DraftAnswerMultipleSelect;
  const factory DraftAnswer.text(String value) = DraftAnswerText;
  const factory DraftAnswer.scale(int value) = DraftAnswerScale;
}
