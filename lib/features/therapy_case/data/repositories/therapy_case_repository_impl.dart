import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/exceptions.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/therapy_case/data/datasources/therapy_case_remote_datasource.dart';
import 'package:ruh/features/therapy_case/domain/entities/therapy_case.dart';
import 'package:ruh/features/therapy_case/domain/repositories/therapy_case_repository.dart';

@LazySingleton(as: TherapyCaseRepository)
class TherapyCaseRepositoryImpl implements TherapyCaseRepository {
  final TherapyCaseRemoteDataSource _remote;

  TherapyCaseRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, TherapyCase>> getTherapyCase(String id) async {
    try {
      final result = await _remote.getById(id);
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
  Future<Either<Failure, PaginatedResponse<TherapyCase>>> getTherapyCases(
    PaginationQueryParamsDto dto,
  ) async {
    try {
      final result = await _remote.getAll(paginationQueryParamsDto: dto);
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
