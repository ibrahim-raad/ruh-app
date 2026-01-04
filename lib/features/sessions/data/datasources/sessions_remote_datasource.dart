import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/network/base_api.dart';
import 'package:ruh/features/sessions/domain/entities/session.dart';

@lazySingleton
class SessionsRemoteDataSource extends BaseApi<Session> {
  SessionsRemoteDataSource(Dio dio) : super(dio, '/sessions', Session.fromJson);
}
