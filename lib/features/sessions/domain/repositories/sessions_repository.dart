import 'package:fpdart/fpdart.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import '../entities/session.dart';

abstract class SessionsRepository {
  Future<Either<Failure, PaginatedResponse<Session>>> getSessions(
    PaginationQueryParamsDto dto,
  );
}
