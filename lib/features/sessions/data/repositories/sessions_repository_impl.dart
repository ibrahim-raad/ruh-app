import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/exceptions.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/sessions/data/datasources/sessions_remote_datasource.dart';
import 'package:ruh/features/sessions/domain/entities/session.dart';
import 'package:ruh/features/sessions/domain/repositories/sessions_repository.dart';

@LazySingleton(as: SessionsRepository)
class SessionsRepositoryImpl implements SessionsRepository {
  final SessionsRemoteDataSource _remote;

  SessionsRepositoryImpl(this._remote);

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
}
