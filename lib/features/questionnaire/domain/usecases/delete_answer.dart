import 'package:fpdart/fpdart.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:ruh/features/questionnaire/domain/repositories/questionnaire_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeleteAnswerUseCase implements UseCase<void, String> {
  final QuestionnaireRepository _questionnaireRepository;

  DeleteAnswerUseCase(this._questionnaireRepository);

  @override
  Future<Either<Failure, void>> call(String params) async {
    return await _questionnaireRepository.deleteAnswer(params);
  }
}
