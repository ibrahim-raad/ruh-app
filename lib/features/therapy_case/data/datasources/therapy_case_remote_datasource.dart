import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/network/base_api.dart';
import 'package:ruh/features/therapy_case/domain/entities/therapy_case.dart';

@lazySingleton
class TherapyCaseRemoteDataSource extends BaseApi<TherapyCase> {
  TherapyCaseRemoteDataSource(Dio dio)
    : super(dio, '/therapy-cases', TherapyCase.fromJson);
}
