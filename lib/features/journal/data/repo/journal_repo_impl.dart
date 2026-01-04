import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/exceptions.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/journal/data/datasource/reflection_remote_datasource.dart';
import 'package:ruh/features/journal/domain/dtos/create_reflection_dto.dart';
import 'package:ruh/features/journal/domain/dtos/update_reflection_dto.dart';
import 'package:ruh/features/journal/domain/entities/reflection.dart';
import 'package:ruh/features/journal/domain/repo/journal_repo.dart';

@LazySingleton(as: JournalRepository)
class JournalRepositoryImpl implements JournalRepository {
  final ReflectionRemoteDataSource _remoteDataSource;

  JournalRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, Reflection>> createReflection(
    CreateReflectionDto dto,
  ) async {
    try {
      final result = await _remoteDataSource.create(dto.toJson());
      return Right(result);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Reflection>> getReflection(String id) async {
    try {
      final result = await _remoteDataSource.getById(id);
      return Right(result);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Reflection>> updateReflection(
    String id,
    UpdateReflectionDto dto,
  ) async {
    try {
      final result = await _remoteDataSource.update(id, dto.toJson());
      return Right(result);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteReflection(String id) async {
    try {
      await _remoteDataSource.delete(id);
      return const Right(null);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PaginatedResponse<Reflection>>> getReflections(
    PaginationQueryParamsDto dto,
  ) async {
    try {
      final result = await _remoteDataSource.getAll(
        paginationQueryParamsDto: dto,
      );
      return Right(result);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
