import 'package:fpdart/fpdart.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/features/questionnaire/domain/dtos/post_answer_dto.dart';
import 'package:ruh/features/questionnaire/domain/entities/patient_answer.dart';
import 'package:ruh/features/questionnaire/domain/repositories/questionnaire_repository.dart';

class UpdateAnswerParams {
  final String answerId;
  final PostAnswerDto dto;

  const UpdateAnswerParams({required this.answerId, required this.dto});
}

@lazySingleton
class UpdateAnswerUseCase
    implements UseCase<PatientAnswer, UpdateAnswerParams> {
  final QuestionnaireRepository _questionnaireRepository;

  UpdateAnswerUseCase(this._questionnaireRepository);

  @override
  Future<Either<Failure, PatientAnswer>> call(UpdateAnswerParams params) async {
    return await _questionnaireRepository.updateAnswer(
      params.answerId,
      params.dto,
    );
  }
}
