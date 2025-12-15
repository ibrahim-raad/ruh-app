import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';
import 'package:ruh/features/patient_profile/domain/dtos/update_patient_profile_dto.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/patient_profile.dart';
import '../../domain/repositories/patient_profile_repository.dart';
import '../datasources/patient_profile_remote_datasource.dart';

@LazySingleton(as: PatientProfileRepository)
class PatientProfileRepositoryImpl implements PatientProfileRepository {
  final PatientProfileRemoteDataSource _remoteDataSource;

  PatientProfileRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, Patient>> getPatientProfile() async {
    try {
      final result = await _remoteDataSource.getById('me');
      return Right(result);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on BadRequestException catch (e) {
      return Left(BadRequestFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Patient>> updatePatientProfile(
    UpdatePatientProfileDto dto,
  ) async {
    try {
      final result = await _remoteDataSource.update('me', dto.toJson());
      return Right(result);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on BadRequestException catch (e) {
      return Left(BadRequestFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> uploadProfileImage(File image) async {
    try {
      final result = await _remoteDataSource.uploadProfileImage(image);
      return Right(result);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on BadRequestException catch (e) {
      return Left(BadRequestFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> deleteProfileImage() async {
    try {
      final result = await _remoteDataSource.deleteProfileImage();
      return Right(result);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on BadRequestException catch (e) {
      return Left(BadRequestFailure(e.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
