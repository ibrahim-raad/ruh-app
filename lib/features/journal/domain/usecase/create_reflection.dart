import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/failures.dart';
import 'package:ruh/core/usecases/usecase.dart';
import 'package:ruh/features/journal/domain/dtos/create_reflection_dto.dart';
import 'package:ruh/features/journal/domain/entities/reflection.dart';
import 'package:ruh/features/journal/domain/repo/journal_repo.dart';

@lazySingleton
class CreateReflection implements UseCase<Reflection, CreateReflectionDto> {
  final JournalRepository _repository;

  CreateReflection(this._repository);

  @override
  Future<Either<Failure, Reflection>> call(CreateReflectionDto dto) async {
    return _repository.createReflection(dto);
  }
}
