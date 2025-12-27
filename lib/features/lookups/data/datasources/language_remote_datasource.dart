import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:ruh/features/lookups/domain/entities/language.dart';
import '../../../../core/network/base_api.dart';

@lazySingleton
class LanguageRemoteDataSource extends BaseApi<Language> {
  LanguageRemoteDataSource(Dio dio)
    : super(dio, '/languages', Language.fromJson);
}
