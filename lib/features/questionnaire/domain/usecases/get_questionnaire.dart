import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:ruh/features/questionnaire/domain/entities/full_questionnaire.dart';
import 'package:ruh/features/questionnaire/domain/entities/questionnaire.dart';
import 'package:ruh/features/questionnaire/domain/repositories/questionnaire_repository.dart';

@lazySingleton
class GetQuestionnaireUseCase
    implements UseCase<FullQuestionnaire, QuestionnaireType> {
  final QuestionnaireRepository _questionnaireRepository;

  GetQuestionnaireUseCase(this._questionnaireRepository);

  @override
  Future<Either<Failure, FullQuestionnaire>> call(
    QuestionnaireType params,
  ) async {
    return await _questionnaireRepository.getQuestionnaire(params);
  }
}
