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
import '../../features/auth/domain/usecases/logout_user.dart' as _i419;
import '../../features/auth/domain/usecases/register_user.dart' as _i198;
import '../../features/auth/domain/usecases/request_password_reset.dart'
    as _i956;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../../features/journal/data/datasource/reflection_remote_datasource.dart'
    as _i24;
import '../../features/journal/data/repo/journal_repo_impl.dart' as _i877;
import '../../features/journal/domain/repo/journal_repo.dart' as _i614;
import '../../features/journal/domain/usecase/create_reflection.dart' as _i706;
import '../../features/lookups/data/datasources/country_remote_datasource.dart'
    as _i452;
import '../../features/lookups/data/datasources/language_remote_datasource.dart'
    as _i576;
import '../../features/lookups/data/repositories/lookups_repository_impl.dart'
    as _i226;
import '../../features/lookups/domain/repositories/lookups_repository.dart'
    as _i680;
import '../../features/lookups/domain/usecases/get_countries.dart' as _i368;
import '../../features/lookups/domain/usecases/get_languages.dart' as _i907;
import '../../features/lookups/presentation/cubit/countries_cubit.dart'
    as _i610;
import '../../features/lookups/presentation/cubit/languages_cubit.dart'
    as _i643;
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
import '../../features/patient_profile/data/datasources/patient_profile_remote_datasource.dart'
    as _i704;
import '../../features/patient_profile/data/repositories/patient_profile_repository_impl.dart'
    as _i69;
import '../../features/patient_profile/domain/repositories/patient_profile_repository.dart'
    as _i867;
import '../../features/patient_profile/domain/usecases/delete_profile_image.dart'
    as _i922;
import '../../features/patient_profile/domain/usecases/get_patient_profile.dart'
    as _i972;
import '../../features/patient_profile/domain/usecases/update_patient_profile.dart'
    as _i872;
import '../../features/patient_profile/domain/usecases/upload_profile_image.dart'
    as _i612;
import '../../features/patient_profile/presentation/bloc/patient_profile_bloc.dart'
    as _i694;
import '../../features/questionnaire/data/datasources/answer_remote_datasource.dart'
    as _i736;
import '../../features/questionnaire/data/datasources/questionnaire_remote_datasource.dart'
    as _i17;
import '../../features/questionnaire/data/repositories/questionnaire_repository_impl.dart'
    as _i555;
import '../../features/questionnaire/domain/repositories/questionnaire_repository.dart'
    as _i366;
import '../../features/questionnaire/domain/usecases/delete_answer.dart'
    as _i474;
import '../../features/questionnaire/domain/usecases/get_questionnaire.dart'
    as _i232;
import '../../features/questionnaire/domain/usecases/post_answer.dart' as _i794;
import '../../features/questionnaire/domain/usecases/update_answer.dart'
    as _i761;
import '../../features/questionnaire/presentation/bloc/questionnaire_bloc.dart'
    as _i1049;
import '../../features/sessions/data/datasources/sessions_remote_datasource.dart'
    as _i954;
import '../../features/sessions/data/datasources/therapist_availability_remote_datasource.dart'
    as _i210;
import '../../features/sessions/data/repositories/sessions_repository_impl.dart'
    as _i808;
import '../../features/sessions/domain/repositories/sessions_repository.dart'
    as _i374;
import '../../features/splash/data/datasources/splash_local_datasource.dart'
    as _i201;
import '../../features/splash/data/repositories/splash_repository_impl.dart'
    as _i554;
import '../../features/splash/domain/repositories/splash_repository.dart'
    as _i210;
import '../../features/splash/domain/usecases/check_startup_status.dart'
    as _i23;
import '../../features/splash/presentation/bloc/splash_bloc.dart' as _i442;
import '../../features/therapists/data/datasources/therapists_remote_datasource.dart'
    as _i232;
import '../../features/therapists/data/repositories/therapists_repository_impl.dart'
    as _i995;
import '../../features/therapists/domain/repositories/therapists_repository.dart'
    as _i1056;
import '../../features/therapy_case/data/datasources/therapy_case_remote_datasource.dart'
    as _i649;
import '../../features/therapy_case/data/repositories/therapy_case_repository_impl.dart'
    as _i122;
import '../../features/therapy_case/domain/repositories/therapy_case_repository.dart'
    as _i394;
import '../network/api_client.dart' as _i557;
import '../network/interceptors/auth_interceptor.dart' as _i745;
import '../network/models/pagination_query_params_dto.dart' as _i1005;
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
    gh.lazySingleton<_i24.ReflectionRemoteDataSource>(
      () => _i24.ReflectionRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i452.CountryRemoteDataSource>(
      () => _i452.CountryRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i576.LanguageRemoteDataSource>(
      () => _i576.LanguageRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i704.PatientProfileRemoteDataSource>(
      () => _i704.PatientProfileRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i736.AnswerRemoteDataSource>(
      () => _i736.AnswerRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i17.QuestionnaireRemoteDataSource>(
      () => _i17.QuestionnaireRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i954.SessionsRemoteDataSource>(
      () => _i954.SessionsRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i232.TherapistsRemoteDataSource>(
      () => _i232.TherapistsRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i649.TherapyCaseRemoteDataSource>(
      () => _i649.TherapyCaseRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i210.TherapistAvailabilityRemoteDataSource>(
      () => _i210.TherapistAvailabilityRemoteDataSource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i161.AuthRemoteDataSource>(),
        gh<_i905.TokenStorage>(),
      ),
    );
    gh.lazySingleton<_i614.JournalRepository>(
      () => _i877.JournalRepositoryImpl(gh<_i24.ReflectionRemoteDataSource>()),
    );
    gh.lazySingleton<_i706.CreateReflection>(
      () => _i706.CreateReflection(gh<_i614.JournalRepository>()),
    );
    gh.lazySingleton<_i394.TherapyCaseRepository>(
      () => _i122.TherapyCaseRepositoryImpl(
        gh<_i649.TherapyCaseRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i867.PatientProfileRepository>(
      () => _i69.PatientProfileRepositoryImpl(
        gh<_i704.PatientProfileRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i374.SessionsRepository>(
      () => _i808.SessionsRepositoryImpl(
        gh<_i954.SessionsRemoteDataSource>(),
        gh<_i210.TherapistAvailabilityRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i680.LookupsRepository>(
      () => _i226.LookupsRepositoryImpl(
        gh<_i452.CountryRemoteDataSource>(),
        gh<_i576.LanguageRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i23.CheckStartupStatus>(
      () => _i23.CheckStartupStatus(
        gh<_i210.SplashRepository>(),
        gh<_i787.AuthRepository>(),
      ),
    );
    gh.lazySingleton<_i1056.TherapistsRepository>(
      () => _i995.TherapistsRepositoryImpl(
        gh<_i232.TherapistsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i778.LoginUser>(
      () => _i778.LoginUser(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i419.LogoutUser>(
      () => _i419.LogoutUser(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i198.RegisterUser>(
      () => _i198.RegisterUser(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i956.RequestPasswordReset>(
      () => _i956.RequestPasswordReset(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i366.QuestionnaireRepository>(
      () => _i555.QuestionnaireRepositoryImpl(
        gh<_i17.QuestionnaireRemoteDataSource>(),
        gh<_i736.AnswerRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i797.AuthBloc>(
      () => _i797.AuthBloc(
        gh<_i778.LoginUser>(),
        gh<_i198.RegisterUser>(),
        gh<_i419.LogoutUser>(),
      ),
    );
    gh.factory<_i442.SplashBloc>(
      () => _i442.SplashBloc(gh<_i23.CheckStartupStatus>()),
    );
    gh.lazySingleton<_i922.DeleteProfileImage>(
      () => _i922.DeleteProfileImage(gh<_i867.PatientProfileRepository>()),
    );
    gh.lazySingleton<_i972.GetPatientProfile>(
      () => _i972.GetPatientProfile(gh<_i867.PatientProfileRepository>()),
    );
    gh.lazySingleton<_i872.UpdatePatientProfile>(
      () => _i872.UpdatePatientProfile(gh<_i867.PatientProfileRepository>()),
    );
    gh.lazySingleton<_i612.UploadProfileImage>(
      () => _i612.UploadProfileImage(gh<_i867.PatientProfileRepository>()),
    );
    gh.lazySingleton<_i368.GetCountries>(
      () => _i368.GetCountries(gh<_i680.LookupsRepository>()),
    );
    gh.lazySingleton<_i907.GetLanguages>(
      () => _i907.GetLanguages(gh<_i680.LookupsRepository>()),
    );
    gh.lazySingleton<_i474.DeleteAnswerUseCase>(
      () => _i474.DeleteAnswerUseCase(gh<_i366.QuestionnaireRepository>()),
    );
    gh.lazySingleton<_i232.GetQuestionnaireUseCase>(
      () => _i232.GetQuestionnaireUseCase(gh<_i366.QuestionnaireRepository>()),
    );
    gh.lazySingleton<_i794.PostAnswerUseCase>(
      () => _i794.PostAnswerUseCase(gh<_i366.QuestionnaireRepository>()),
    );
    gh.lazySingleton<_i761.UpdateAnswerUseCase>(
      () => _i761.UpdateAnswerUseCase(gh<_i366.QuestionnaireRepository>()),
    );
    gh.factoryParam<
      _i610.CountriesCubit,
      _i1005.PaginationQueryParamsDto,
      dynamic
    >((dto, _) => _i610.CountriesCubit(gh<_i368.GetCountries>(), dto));
    gh.factory<_i1049.QuestionnaireBloc>(
      () => _i1049.QuestionnaireBloc(
        gh<_i232.GetQuestionnaireUseCase>(),
        gh<_i794.PostAnswerUseCase>(),
        gh<_i761.UpdateAnswerUseCase>(),
        gh<_i474.DeleteAnswerUseCase>(),
      ),
    );
    gh.factoryParam<
      _i643.LanguagesCubit,
      _i1005.PaginationQueryParamsDto,
      dynamic
    >((dto, _) => _i643.LanguagesCubit(gh<_i907.GetLanguages>(), dto));
    gh.factory<_i694.PatientProfileBloc>(
      () => _i694.PatientProfileBloc(
        gh<_i972.GetPatientProfile>(),
        gh<_i872.UpdatePatientProfile>(),
        gh<_i612.UploadProfileImage>(),
        gh<_i922.DeleteProfileImage>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}

class _$NetworkModule extends _i557.NetworkModule {}
