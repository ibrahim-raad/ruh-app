import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import '../../domain/entities/country.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:ruh/features/lookups/domain/repositories/lookups_repository.dart';

@lazySingleton
class GetCountries
    implements UseCase<PaginatedResponse<Country>, PaginationQueryParamsDto> {
  final LookupsRepository _repository;

  GetCountries(this._repository);

  @override
  Future<Either<Failure, PaginatedResponse<Country>>> call(
    PaginationQueryParamsDto params,
  ) async {
    return _repository.getCountries(paginationQueryParamsDto: params);
  }
}
