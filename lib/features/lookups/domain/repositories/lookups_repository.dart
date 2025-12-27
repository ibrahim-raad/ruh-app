import 'package:fpdart/fpdart.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/features/lookups/domain/entities/language.dart';
import '../../../../core/errors/failures.dart';
import '../entities/country.dart';

abstract class LookupsRepository {
  Future<Either<Failure, Country>> getCountry(String id);
  Future<Either<Failure, PaginatedResponse<Country>>> getCountries({
    PaginationQueryParamsDto paginationQueryParamsDto =
        const PaginationQueryParamsDto(),
  });
  Future<Either<Failure, PaginatedResponse<Language>>> getLanguages({
    PaginationQueryParamsDto paginationQueryParamsDto =
        const PaginationQueryParamsDto(),
  });
}
