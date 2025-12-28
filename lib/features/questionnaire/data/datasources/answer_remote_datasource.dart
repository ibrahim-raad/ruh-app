import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ruh/core/network/base_api.dart';
import 'package:ruh/features/questionnaire/domain/entities/patient_answer.dart';

@lazySingleton
class AnswerRemoteDataSource extends BaseApi<PatientAnswer> {
  AnswerRemoteDataSource(Dio dio)
    : super(dio, '/patient-answers', PatientAnswer.fromJson);
}
