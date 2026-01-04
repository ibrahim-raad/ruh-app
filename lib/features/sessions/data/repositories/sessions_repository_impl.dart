import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/exceptions.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/sessions/data/datasources/sessions_remote_datasource.dart';
import 'package:ruh/features/sessions/data/datasources/therapist_availability_remote_datasource.dart';
import 'package:ruh/features/sessions/domain/dtos/create_session_dto.dart';
import 'package:ruh/features/sessions/domain/entities/therapist_availability_calendar.dart';
import 'package:ruh/features/sessions/domain/entities/session.dart';
import 'package:ruh/features/sessions/domain/repositories/sessions_repository.dart';

@LazySingleton(as: SessionsRepository)
class SessionsRepositoryImpl implements SessionsRepository {
  final SessionsRemoteDataSource _remote;
  final TherapistAvailabilityRemoteDataSource _availabilityRemote;

  SessionsRepositoryImpl(this._remote, this._availabilityRemote);

  @override
  Future<Either<Failure, PaginatedResponse<Session>>> getSessions(
    PaginationQueryParamsDto dto,
  ) async {
    try {
      final page = await _remote.getAll(paginationQueryParamsDto: dto);
      return Right(page);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, TherapistAvailabilityCalendarOutput>>
  getTherapistAvailabilityCalendar(String therapistId) async {
    try {
      final calendar = await _availabilityRemote.getCalendar(
        therapistId: therapistId,
      );
      return Right(calendar);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Session>> createSession(CreateSessionDto dto) async {
    try {
      final session = await _remote.createSession(dto);
      return Right(session);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
