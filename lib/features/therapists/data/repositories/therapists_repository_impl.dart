import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/exceptions.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import '../../domain/entities/therapist.dart';
import '../../domain/repositories/therapists_repository.dart';
import '../datasources/therapists_remote_datasource.dart';

@LazySingleton(as: TherapistsRepository)
class TherapistsRepositoryImpl implements TherapistsRepository {
  final TherapistsRemoteDataSource _remote;

  TherapistsRepositoryImpl(this._remote);

  @override
  Future<Either<Failure, PaginatedResponse<TherapistOutput>>> getTherapists(
    PaginationQueryParamsDto dto,
  ) async {
    try {
      final page = await _remote.getAll(paginationQueryParamsDto: dto);
      return Right(page);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
