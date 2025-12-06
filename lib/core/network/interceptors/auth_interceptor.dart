import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../utils/token_storage.dart';

@injectable
class AuthInterceptor extends Interceptor {
  final TokenStorage _tokenStorage;
  final Dio _refreshDio;

  AuthInterceptor(this._tokenStorage, @Named('refreshDio') this._refreshDio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = _tokenStorage.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      try {
        final response = await _refreshDio.post('/auth/refresh-token');

        final newAccessToken = response.data['access_token'];

        await _tokenStorage.saveToken(newAccessToken);

        final opts = err.requestOptions;
        opts.headers['Authorization'] = 'Bearer $newAccessToken';

        final cloneReq = await _refreshDio.request(
          opts.path,
          options: Options(method: opts.method, headers: opts.headers),
          data: opts.data,
          queryParameters: opts.queryParameters,
        );

        return handler.resolve(cloneReq);
      } catch (e) {
        // Refresh failed (Cookie expired or invalid)
        // Logout user, clear tokens
        await _tokenStorage.clearToken();
        return handler.reject(err); // Return original 401
      }
    }
    handler.next(err);
  }
}
