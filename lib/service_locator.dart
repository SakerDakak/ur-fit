import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/modules/auth/data/repo/authentication_repo.dart';
import 'package:urfit/modules/auth/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/auth/personal_info/data/data_source/personal_info_datasource.dart';
import 'package:urfit/modules/auth/personal_info/data/repos/personal_info_repo.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/data/data_source/meals_local_datasource.dart';
import 'package:urfit/modules/meals_module/data/data_source/meals_remote_datasource.dart';
import 'package:urfit/modules/meals_module/repo/meals_repo.dart';
import 'package:urfit/modules/onboarding/controller/onboarding_cubit.dart';
import 'package:urfit/modules/profile_module/controller/setting_cubit.dart';
import 'package:urfit/modules/profile_module/data/setting_remote_data_source.dart';
import 'package:urfit/modules/profile_module/repo/setting_repo.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/subscription_module/data/subscription_remote_datasource.dart';
import 'package:urfit/modules/subscription_module/data/subscription_repo.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';
import 'package:urfit/modules/workout_module/data/workout_remote_datasource.dart';
import 'package:urfit/modules/workout_module/workout_repo/workout_repo.dart';

import 'core/data/api/api_client.dart';
import 'core/presentation/appCubit/app_cubit.dart';
import 'modules/auth/data/authentication/authentication_remote_datasource.dart';
import 'modules/auth/persentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'modules/auth/persentation/bloc/login_bloc.dart';
import 'modules/home_module/controller/cubit/health_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // async initialization
  sl.registerSingletonAsync(() => SharedPreferences.getInstance());
  sl.registerSingletonAsync(() => PackageInfo.fromPlatform());

  await Future.wait([
    sl.getAsync<SharedPreferences>(),
    sl.getAsync<PackageInfo>(),
  ]);

  // register the personal info repo
  sl.registerLazySingleton<PersonalInfoRepo>(
    () => PersonalInfoRepoImpl(PersonalInfoDataSourceImpl(sl<ApiClient>())),
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

  sl.registerLazySingleton<AuthenticationRemoteDataSource>(() => AuthenticationRemoteDataSource(sl()));
  // sl.registerLazySingleton<UserLocalDataSource>(() => UserLocalDataSource());
  sl.registerLazySingleton<SubscriptionRemoteDataSource>(() => SubscriptionRemoteDataSource(sl()));
  sl.registerLazySingleton<MealsRemoteDataSource>(() => MealsRemoteDataSource(sl()));
  sl.registerLazySingleton<MealsLocalDatasource>(() => MealsLocalDatasource());
  sl.registerLazySingleton<WorkoutRemoteDataSource>(() => WorkoutRemoteDataSource(sl()));
  sl.registerLazySingleton<SettingRemoteDataSource>(() => SettingRemoteDataSource(sl()));

  /// Repository
  sl.registerLazySingleton<AuthenticationRepo>(() => AuthenticationRepo(sl()));
  sl.registerLazySingleton<SubscriptionRepo>(() => SubscriptionRepo(sl()));
  sl.registerLazySingleton<MealsRepo>(() => MealsRepo(sl(), sl()));
  sl.registerLazySingleton<WorkoutRepo>(() => WorkoutRepo(sl()));
  sl.registerLazySingleton<SettingRepo>(() => SettingRepo(sl()));

  ///services
  sl.registerLazySingleton<ApiClient>(() => ApiClient());

  // sl.registerLazySingleton<MessagingService>(() => MessagingService());
  // sl.registerLazySingleton<HiveServices>(() => HiveServices());
  // sl.registerLazySingleton<FlutterLocalization>(() => LocalizationUtil.localization);
  // sl.registerFactoryAsync<bool>(() async => await Geolocator.isLocationServiceEnabled(),instanceName: "locationService");
  // sl.registerFactoryAsync<LocationPermission>(() async => await Geolocator.checkPermission(),instanceName: "permission");

  // sl.registerSingleton<bool>(sl<AppCubit>().isDark,instanceName: "isDark");
}
