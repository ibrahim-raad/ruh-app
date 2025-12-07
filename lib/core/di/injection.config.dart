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
import '../../features/onboarding/data/datasources/onboarding_local_datasource.dart'
    as _i804;
import '../../features/onboarding/data/repositories/onboarding_repository_impl.dart'
    as _i452;
import '../../features/onboarding/domain/repositories/onboarding_repository.dart'
    as _i430;
import '../../features/onboarding/domain/usecases/complete_onboarding.dart'
    as _i561;
import '../../features/onboarding/domain/usecases/get_onboarding_items.dart'
    as _i260;
import '../../features/onboarding/presentation/bloc/onboarding_bloc.dart'
    as _i792;
import '../../features/splash/data/datasources/splash_local_datasource.dart'
    as _i201;
import '../../features/splash/data/repositories/splash_repository_impl.dart'
    as _i554;
import '../../features/splash/domain/repositories/splash_repository.dart'
    as _i210;
import '../../features/splash/domain/usecases/check_startup_status.dart'
    as _i23;
import '../../features/splash/presentation/bloc/splash_bloc.dart' as _i442;
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
    gh.lazySingleton<_i804.OnboardingLocalDataSource>(
      () => _i804.OnboardingLocalDataSourceImpl(),
    );
    gh.lazySingleton<_i905.TokenStorage>(
      () => _i905.TokenStorage(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i201.SplashLocalDataSource>(
      () => _i201.SplashLocalDataSource(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i430.OnboardingRepository>(
      () =>
          _i452.OnboardingRepositoryImpl(gh<_i804.OnboardingLocalDataSource>()),
    );
    gh.lazySingleton<_i260.GetOnboardingItems>(
      () => _i260.GetOnboardingItems(gh<_i430.OnboardingRepository>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.refreshDio(gh<_i557.PersistCookieJar>()),
      instanceName: 'refreshDio',
    );
    gh.lazySingleton<_i210.SplashRepository>(
      () => _i554.SplashRepositoryImpl(gh<_i201.SplashLocalDataSource>()),
    );
    gh.lazySingleton<_i561.CompleteOnboarding>(
      () => _i561.CompleteOnboarding(gh<_i210.SplashRepository>()),
    );
    gh.factory<_i792.OnboardingBloc>(
      () => _i792.OnboardingBloc(
        gh<_i260.GetOnboardingItems>(),
        gh<_i561.CompleteOnboarding>(),
      ),
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
    gh.lazySingleton<_i23.CheckStartupStatus>(
      () => _i23.CheckStartupStatus(
        gh<_i210.SplashRepository>(),
        gh<_i787.AuthRepository>(),
      ),
    );
    gh.lazySingleton<_i778.LoginUser>(
      () => _i778.LoginUser(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i442.SplashBloc>(
      () => _i442.SplashBloc(gh<_i23.CheckStartupStatus>()),
    );
    gh.factory<_i797.AuthBloc>(
      () => _i797.AuthBloc(gh<_i778.LoginUser>(), gh<_i787.AuthRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}

class _$NetworkModule extends _i557.NetworkModule {}
