import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/lookups/data/datasources/language_remote_datasource.dart';
import 'package:ruh/features/lookups/domain/entities/language.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/country.dart';
import '../../domain/repositories/lookups_repository.dart';
import '../datasources/country_remote_datasource.dart';

@LazySingleton(as: LookupsRepository)
class LookupsRepositoryImpl implements LookupsRepository {
  final CountryRemoteDataSource _countryRemoteDataSource;
  final LanguageRemoteDataSource _languageRemoteDataSource;
  LookupsRepositoryImpl(
    this._countryRemoteDataSource,
    this._languageRemoteDataSource,
  );

  @override
  Future<Either<Failure, Country>> getCountry(String id) async {
    try {
      final result = await _countryRemoteDataSource.getById(id);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PaginatedResponse<Country>>> getCountries({
    PaginationQueryParamsDto paginationQueryParamsDto =
        const PaginationQueryParamsDto(),
  }) async {
    try {
      final result = await _countryRemoteDataSource.getAll(
        paginationQueryParamsDto: paginationQueryParamsDto,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PaginatedResponse<Language>>> getLanguages({
    PaginationQueryParamsDto paginationQueryParamsDto =
        const PaginationQueryParamsDto(),
  }) async {
    try {
      final result = await _languageRemoteDataSource.getAll(
        paginationQueryParamsDto: paginationQueryParamsDto,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
