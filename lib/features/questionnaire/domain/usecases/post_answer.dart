import 'package:fpdart/fpdart.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/features/questionnaire/domain/dtos/post_answer_dto.dart';
import 'package:ruh/features/questionnaire/domain/entities/patient_answer.dart';
import 'package:ruh/features/questionnaire/domain/repositories/questionnaire_repository.dart';

@lazySingleton
class PostAnswerUseCase implements UseCase<PatientAnswer, PostAnswerDto> {
  final QuestionnaireRepository _questionnaireRepository;

  PostAnswerUseCase(this._questionnaireRepository);

  @override
  Future<Either<Failure, PatientAnswer>> call(PostAnswerDto params) async {
    return await _questionnaireRepository.postAnswer(params);
  }
}
