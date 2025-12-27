import 'package:ruh/core/errors/handle_dio_error.dart';
import 'package:ruh/features/auth/data/models/auth_response.dart';
import 'package:ruh/features/auth/domain/dtos/login_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/features/auth/domain/dtos/register_dto.dart';
import '../../../../core/network/base_api.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/user.dart';

@lazySingleton
class AuthRemoteDataSource extends BaseApi<User> {
  AuthRemoteDataSource(Dio dio) : super(dio, '/auth', User.fromJson);

  Future<AuthResponse> login(LoginDto dto) async {
    try {
      final response = await dio.post('$endpoint/login', data: dto.toJson());

      return AuthResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<void> logout() async {
    try {
      await dio.post('$endpoint/logout');
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<AuthResponse> register(RegisterDto dto) async {
    try {
      final response = await dio.post('$endpoint/register', data: dto.toJson());

      return AuthResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  Future<User> getCurrentUser() async {
    try {
      final response = await dio.get('$endpoint/me');
      return User.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
