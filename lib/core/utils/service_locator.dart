import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:urfit/modules/auth_module/onboarding/controller/onboarding_cubit.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/auth_module/personal_info/data/data_source/personal_info_datasource.dart';
import 'package:urfit/modules/auth_module/personal_info/data/repos/personal_info_repo.dart';
import 'package:urfit/modules/auth_module/repo/authentication_repo.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/data/data_source/meals_local_datasource.dart';
import 'package:urfit/modules/meals_module/data/data_source/meals_remote_datasource.dart';
import 'package:urfit/modules/meals_module/repo/meals_repo.dart';
import 'package:urfit/modules/profile_module/controller/setting_cubit.dart';
import 'package:urfit/modules/profile_module/data/setting_remote_data_source.dart';
import 'package:urfit/modules/profile_module/repo/setting_repo.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/subscription_module/data/subscription_remote_datasource.dart';
import 'package:urfit/modules/subscription_module/data/subscription_repo.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';
import 'package:urfit/modules/workout_module/data/workout_remote_datasource.dart';
import 'package:urfit/modules/workout_module/workout_repo/workout_repo.dart';

import '../../modules/auth_module/bloc/authentication_bloc.dart';
import '../../modules/auth_module/bloc/login_bloc.dart';
import '../../modules/auth_module/data/authentication/authentication_local_datasource.dart';
import '../../modules/auth_module/data/authentication/authentication_remote_datasource.dart';
import '../../modules/home_module/controller/cubit/health_cubit.dart';
import '../shared/appCubit/app_cubit.dart';
import '../api/api_client.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    // register the personal info repo
    sl.registerLazySingleton<PersonalInfoRepo>(
      () => PersonalInfoRepoImpl(PersonalInfoDataSourceImpl(sl<DioServices>())),
    );

    /// Bloc
    ///
    sl.registerLazySingleton(() => AuthenticationBloc(sl()));
    // final sl = GetIt.instance;
    sl.registerFactory(() => LoginBloc(sl(), sl()));
    sl.registerFactory(() => AppCubit());
    sl.registerFactory(() => OnboardingCubit(sl()));
    sl.registerFactory(() => HealthCubit());
    sl.registerFactory(() => SetupPersonalInfoCubit(sl()));
    sl.registerFactory(() => SubscriptionCubit(sl()));
    sl.registerFactory(() => MealsCubit(sl()));
    sl.registerFactory(() => WorkoutCubit(sl()));
    sl.registerFactory(() => SettingCubit(sl()));

    // sl.registerFactoryParam((int? param1, param2) => QuranCubit(quranRepository: sl(),initialIndex: param1),);
    // sl.registerFactory(() => LiveCubit(sl()));

    sl.registerLazySingleton<BaseAuthenticationRemoteDataSource>(
        () => AuthenticationRemoteDataSource(sl()));
    sl.registerLazySingleton<BaseUserLocalDataSource>(
        () => UserLocalDataSource(sl()));
    sl.registerLazySingleton<BaseSubscriptionRemoteDataSource>(
            () => SubscriptionRemoteDataSource(sl()));
    sl.registerLazySingleton<BaseMealsRemoteDataSource>(
            () => MealsRemoteDataSource(sl()));
    sl.registerLazySingleton<MealsLocalDatasource>(
            () => MealsLocalDatasource());
    sl.registerLazySingleton<BaseWorkoutRemoteDataSource>(
            () => WorkoutRemoteDataSource(sl()));
    sl.registerLazySingleton<BaseSettingRemoteDataSource>(
            () => SettingRemoteDataSource(sl()));
    /// Database
    // Register NoteRepo

    // sl.registerLazySingleton<BaseFileRemoteDataSource>(
    //     () => FileRemoteDataSourceTest1());

    /// Repository
    sl.registerLazySingleton<BaseAuthenticationRepo>(
        () => AuthenticationRepo(sl(), sl()));
    sl.registerLazySingleton<BaseSubscriptionRepo>(
            () => SubscriptionRepo(sl()));
    sl.registerLazySingleton<BaseMealsRepo>(
            () => MealsRepo(sl(),sl()));
    sl.registerLazySingleton<BaseWorkoutRepo>(
            () => WorkoutRepo(sl()));
    sl.registerLazySingleton<BaseSettingRepo>(
            () => SettingRepo(sl()));

    ///services
    sl.registerLazySingleton<DioServices>(() => DioServices());
    sl.registerLazySingleton<FlutterSecureStorage>(
        () => const FlutterSecureStorage());

    // sl.registerLazySingleton<MessagingService>(() => MessagingService());
    // sl.registerLazySingleton<FlutterSecureStorage>(() => const FlutterSecureStorage());
    // sl.registerLazySingleton<HiveServices>(() => HiveServices());
    // sl.registerLazySingleton<FlutterLocalization>(() => LocalizationUtil.localization);
    // sl.registerFactoryAsync<bool>(() async => await Geolocator.isLocationServiceEnabled(),instanceName: "locationService");
    // sl.registerFactoryAsync<LocationPermission>(() async => await Geolocator.checkPermission(),instanceName: "permission");

    // sl.registerSingleton<bool>(sl<AppCubit>().isDark,instanceName: "isDark");
  }

  get() {}
}
