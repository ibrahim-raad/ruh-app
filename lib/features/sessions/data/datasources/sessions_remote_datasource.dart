import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/network/base_api.dart';
import 'package:ruh/core/errors/handle_dio_error.dart';
import 'package:ruh/features/sessions/domain/dtos/create_session_dto.dart';
import 'package:ruh/features/sessions/domain/entities/session.dart';

@lazySingleton
class SessionsRemoteDataSource extends BaseApi<Session> {
  SessionsRemoteDataSource(Dio dio) : super(dio, '/sessions', Session.fromJson);

  Future<Session> createSession(CreateSessionDto dto) async {
    try {
      final response = await dio.post(endpoint, data: dto.toJson());
      return Session.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
