import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_answer_dto.freezed.dart';
part 'post_answer_dto.g.dart';

@freezed
abstract class PostAnswerDto with _$PostAnswerDto {
  const factory PostAnswerDto({
    required String questionId,
    @JsonKey(name: 'possible_answer_id') String? possibleAnswerId,
    String? answer,
  }) = _PostAnswerDto;

  factory PostAnswerDto.fromJson(Map<String, dynamic> json) =>
      _$PostAnswerDtoFromJson(json);
}
