import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/network/base_api.dart';
import 'package:ruh/features/journal/domain/entities/reflection.dart';

@lazySingleton
class ReflectionRemoteDataSource extends BaseApi<Reflection> {
  ReflectionRemoteDataSource(Dio dio)
    : super(dio, '/reflections', Reflection.fromJson);
}
