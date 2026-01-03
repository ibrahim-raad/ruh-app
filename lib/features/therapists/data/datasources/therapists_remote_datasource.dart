import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/network/base_api.dart';
import '../../domain/entities/therapist.dart';

@lazySingleton
class TherapistsRemoteDataSource extends BaseApi<TherapistOutput> {
  TherapistsRemoteDataSource(Dio dio)
    : super(dio, '/therapists', TherapistOutput.fromJson);
}
