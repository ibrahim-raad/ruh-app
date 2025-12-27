import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:ruh/features/lookups/domain/entities/language.dart';
import 'package:ruh/features/lookups/domain/repositories/lookups_repository.dart';

@lazySingleton
class GetLanguages
    implements UseCase<PaginatedResponse<Language>, PaginationQueryParamsDto> {
  final LookupsRepository _repository;

  GetLanguages(this._repository);

  @override
  Future<Either<Failure, PaginatedResponse<Language>>> call(
    PaginationQueryParamsDto params,
  ) async {
    return _repository.getLanguages(paginationQueryParamsDto: params);
  }
}
