import 'package:fpdart/fpdart.dart';
import 'package:ruh/features/questionnaire/domain/dtos/post_answer_dto.dart';
import 'package:ruh/features/questionnaire/domain/entities/full_questionnaire.dart';
import 'package:ruh/features/questionnaire/domain/entities/patient_answer.dart';
import '../../../../core/errors/failures.dart';
import '../entities/questionnaire.dart';

abstract class QuestionnaireRepository {
  Future<Either<Failure, FullQuestionnaire>> getQuestionnaire(
    QuestionnaireType type,
  );
  Future<Either<Failure, PatientAnswer>> postAnswer(PostAnswerDto dto);
  Future<Either<Failure, void>> deleteAnswer(String answerId);
  Future<Either<Failure, PatientAnswer>> updateAnswer(
    String answerId,
    PostAnswerDto dto,
  );
}
