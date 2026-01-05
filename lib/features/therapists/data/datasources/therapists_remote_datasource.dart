import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/errors/handle_dio_error.dart';
import 'package:ruh/core/network/base_api.dart';
import 'package:ruh/features/therapists/domain/dtos/create_therapist_transfer_request_dto.dart';
import '../../domain/entities/therapist.dart';

@lazySingleton
class TherapistsRemoteDataSource extends BaseApi<TherapistOutput> {
  TherapistsRemoteDataSource(Dio dio)
    : super(dio, '/therapists', TherapistOutput.fromJson);

  Future<void> createTransferRequest(
    CreateTherapistTransferRequestDto dto,
  ) async {
    try {
      await dio.post('/therapists-transfer-requests', data: dto.toJson());
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
