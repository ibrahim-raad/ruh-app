import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/features/questionnaire/data/datasources/answer_remote_datasource.dart';
import 'package:ruh/features/questionnaire/domain/dtos/post_answer_dto.dart';
import 'package:ruh/features/questionnaire/domain/entities/full_questionnaire.dart';
import 'package:ruh/features/questionnaire/domain/entities/patient_answer.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/questionnaire.dart';
import '../../domain/repositories/questionnaire_repository.dart';
import '../datasources/questionnaire_remote_datasource.dart';

@LazySingleton(as: QuestionnaireRepository)
class QuestionnaireRepositoryImpl implements QuestionnaireRepository {
  final QuestionnaireRemoteDataSource _remoteDataSource;
  final AnswerRemoteDataSource _answerRemoteDataSource;
  QuestionnaireRepositoryImpl(
    this._remoteDataSource,
    this._answerRemoteDataSource,
  );

  @override
  Future<Either<Failure, FullQuestionnaire>> getQuestionnaire(
    QuestionnaireType type,
  ) async {
    try {
      final result = await _remoteDataSource.getFullQuestionnaire(
        type.name.toUpperCase(),
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PatientAnswer>> postAnswer(PostAnswerDto dto) async {
    try {
      final result = await _answerRemoteDataSource.create(dto.toJson());
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PatientAnswer>> updateAnswer(
    String answerId,
    PostAnswerDto dto,
  ) async {
    try {
      final result = await _answerRemoteDataSource.update(
        answerId,
        dto.toJson(),
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAnswer(String answerId) async {
    try {
      await _answerRemoteDataSource.delete(answerId);
      return const Right(null);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
