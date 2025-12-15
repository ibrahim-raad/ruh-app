import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:ruh/core/errors/handle_dio_error.dart';
import 'package:ruh/features/auth/domain/entities/user.dart';
import '../../../../core/network/base_api.dart';
import '../../domain/entities/patient_profile.dart';

@lazySingleton
class PatientProfileRemoteDataSource extends BaseApi<Patient> {
  PatientProfileRemoteDataSource(Dio dio)
    : super(dio, '/patients', Patient.fromJson);

  Future<User> uploadProfileImage(File image) async {
    try {
      final response = await dio.patch(
        '/users/me/profile-image',
        data: FormData.fromMap({
          'file': MultipartFile.fromFileSync(image.path),
        }),
        options: Options(headers: {'Content-Type': 'multipart/form-data'}),
      );
      return User.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<User> deleteProfileImage() async {
    try {
      final response = await dio.delete('/users/me/profile-image');
      return User.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
