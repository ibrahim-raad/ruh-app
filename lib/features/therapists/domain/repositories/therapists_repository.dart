import 'package:fpdart/fpdart.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import '../entities/therapist.dart';

abstract class TherapistsRepository {
  Future<Either<Failure, PaginatedResponse<TherapistOutput>>> getTherapists(
    PaginationQueryParamsDto dto,
  );
}
