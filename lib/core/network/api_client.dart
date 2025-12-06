import 'package:dio/dio.dart';
import 'package:ruh/core/network/interceptors/auth_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path_provider/path_provider.dart';
import '../config/env_config.dart';

@module
abstract class NetworkModule {
  @preResolve
  @lazySingleton
  Future<PersistCookieJar> get cookieJar async {
    final appDocDir = await getApplicationDocumentsDirectory();
    // This saves cookies to: /data/user/0/com.yourapp/app_flutter/.cookies/
    return PersistCookieJar(
      storage: FileStorage("${appDocDir.path}/.cookies/"),
    );
  }

  @Named('refreshDio')
  @lazySingleton
  Dio refreshDio(PersistCookieJar cookieJar) {
    final dio = Dio(BaseOptions(baseUrl: EnvConfig.baseUrl));
    dio.interceptors.add(CookieManager(cookieJar));
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (obj) => Logger().d(obj),
      ),
    );
    return dio;
  }

  // 3. Main Dio
  @lazySingleton
  Dio dio(PersistCookieJar cookieJar, AuthInterceptor authInterceptor) {
    final dio = Dio(
      BaseOptions(
        baseUrl: EnvConfig.baseUrl,
        connectTimeout: Duration(milliseconds: EnvConfig.connectTimeout),
        receiveTimeout: Duration(milliseconds: EnvConfig.receiveTimeout),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    dio.interceptors.add(CookieManager(cookieJar));
    dio.interceptors.add(authInterceptor);
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (obj) => Logger().d(obj),
      ),
    );
    return dio;
  }
}
