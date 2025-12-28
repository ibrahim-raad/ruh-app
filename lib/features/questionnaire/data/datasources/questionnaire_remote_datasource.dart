import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:ruh/core/errors/exceptions.dart';
import 'package:ruh/core/errors/handle_dio_error.dart';
import 'package:ruh/features/questionnaire/domain/entities/full_questionnaire.dart';
import '../../../../core/network/base_api.dart';
import '../../domain/entities/questionnaire.dart';

@lazySingleton
class QuestionnaireRemoteDataSource extends BaseApi<Questionnaire> {
  QuestionnaireRemoteDataSource(Dio dio)
    : super(dio, '/questionnaires', Questionnaire.fromJson);

  Future<FullQuestionnaire> getFullQuestionnaire(String type) async {
    try {
      final response = await dio.get('$endpoint/full/$type');
      return FullQuestionnaire.fromJson(response.data);
    } on DioException catch (e) {
      throw handleDioError(e);
    } catch (e) {
      throw UnknownApiException(e.toString());
    }
  }
}
