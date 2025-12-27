import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import '../../../../core/network/base_api.dart';
import '../../domain/entities/country.dart';

@lazySingleton
class CountryRemoteDataSource extends BaseApi<Country> {
  CountryRemoteDataSource(Dio dio) : super(dio, '/countries', Country.fromJson);
}
