import 'package:fpdart/fpdart.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/network/models/paginated_response.dart';
import 'package:ruh/core/network/models/pagination_query_params_dto.dart';
import 'package:ruh/features/journal/domain/dtos/create_reflection_dto.dart';
import 'package:ruh/features/journal/domain/dtos/update_reflection_dto.dart';
import 'package:ruh/features/journal/domain/entities/reflection.dart';

abstract class JournalRepository {
  Future<Either<Failure, Reflection>> createReflection(CreateReflectionDto dto);
  Future<Either<Failure, Reflection>> getReflection(String id);
  Future<Either<Failure, Reflection>> updateReflection(
    String id,
    UpdateReflectionDto dto,
  );
  Future<Either<Failure, void>> deleteReflection(String id);
  Future<Either<Failure, PaginatedResponse<Reflection>>> getReflections(
    PaginationQueryParamsDto dto,
  );
}
