import 'package:fpdart/fpdart.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import '../entities/therapy_case.dart';

abstract class TherapyCaseRepository {
  Future<Either<Failure, TherapyCase>> getTherapyCase(String id);

  Future<Either<Failure, PaginatedResponse<TherapyCase>>> getTherapyCases(
    PaginationQueryParamsDto dto,
  );
}
