// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cookie_jar/cookie_jar.dart' as _i557;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/datasources/auth_remote_datasource.dart'
    as _i161;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/login_user.dart' as _i778;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../network/api_client.dart' as _i557;
import '../network/interceptors/auth_interceptor.dart' as _i745;
import '../utils/token_storage.dart' as _i905;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    final networkModule = _$NetworkModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i557.PersistCookieJar>(
      () => networkModule.cookieJar,
      preResolve: true,
    );
    gh.lazySingleton<_i905.TokenStorage>(
      () => _i905.TokenStorage(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.refreshDio(gh<_i557.PersistCookieJar>()),
      instanceName: 'refreshDio',
    );
    gh.factory<_i745.AuthInterceptor>(
      () => _i745.AuthInterceptor(
        gh<_i905.TokenStorage>(),
        gh<_i361.Dio>(instanceName: 'refreshDio'),
      ),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.dio(
        gh<_i557.PersistCookieJar>(),
        gh<_i745.AuthInterceptor>(),
      ),
    );
    gh.lazySingleton<_i161.AuthRemoteDataSource>(
      () => _i161.AuthRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i161.AuthRemoteDataSource>(),
        gh<_i905.TokenStorage>(),
      ),
    );
    gh.lazySingleton<_i778.LoginUser>(
      () => _i778.LoginUser(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i797.AuthBloc>(
      () => _i797.AuthBloc(gh<_i778.LoginUser>(), gh<_i787.AuthRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}

class _$NetworkModule extends _i557.NetworkModule {}
