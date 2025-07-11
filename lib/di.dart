import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_cubit.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/meals_module/data/data_source/meals_local_datasource.dart';
import 'package:urfit/modules/meals_module/data/data_source/meals_remote_datasource.dart';
import 'package:urfit/modules/meals_module/repo/meals_repo.dart';
import 'package:urfit/modules/onboarding/controller/onboarding_cubit.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/data/data_source/personal_info_datasource.dart';
import 'package:urfit/modules/personal_info/data/repos/personal_info_repo.dart';
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
import 'modules/home_module/controller/cubit/health_cubit.dart';

final di = GetIt.instance;

Future<void> init() async {
  // async initialization
  di.registerSingletonAsync(() => SharedPreferences.getInstance());
  di.registerSingletonAsync(() => PackageInfo.fromPlatform());

  await Future.wait([
    di.getAsync<SharedPreferences>(),
    di.getAsync<PackageInfo>(),
  ]);

  ///services
  di.registerLazySingleton<ApiClient>(() => ApiClient());

  // sl.registerLazySingleton<MessagingService>(() => MessagingService());
  // sl.registerLazySingleton<HiveServices>(() => HiveServices());
  // sl.registerLazySingleton<FlutterLocalization>(() => LocalizationUtil.localization);
  // sl.registerFactoryAsync<bool>(() async => await Geolocator.isLocationServiceEnabled(),instanceName: "locationService");
  // sl.registerFactoryAsync<LocationPermission>(() async => await Geolocator.checkPermission(),instanceName: "permission");

  // sl.registerSingleton<bool>(sl<AppCubit>().isDark,instanceName: "isDark");

  // register the personal info repo
  di.registerLazySingleton<PersonalInfoRepoImpl>(
    () => PersonalInfoRepoImpl(PersonalInfoDataSourceImpl(di<ApiClient>())),
  );

  /// Repository
  di.registerLazySingleton<AuthRepo>(() => AuthRepo(di()));
  di.registerLazySingleton<SubscriptionRepo>(() => SubscriptionRepo(di()));
  di.registerLazySingleton<MealsRepo>(() => MealsRepo(di(), di()));
  di.registerLazySingleton<WorkoutRepo>(() => WorkoutRepo(di()));
  di.registerLazySingleton<SettingRepo>(() => SettingRepo(di()));

  // sl.registerLazySingleton<AuthenticationRemoteDataSource>(() => AuthenticationRemoteDataSource(sl()));
  // sl.registerLazySingleton<UserLocalDataSource>(() => UserLocalDataSource());
  di.registerLazySingleton<SubscriptionRemoteDataSource>(() => SubscriptionRemoteDataSource(di()));
  di.registerLazySingleton<MealsRemoteDataSource>(() => MealsRemoteDataSource(di()));
  di.registerLazySingleton<MealsLocalDatasource>(() => MealsLocalDatasource());
  di.registerLazySingleton<WorkoutRemoteDataSource>(() => WorkoutRemoteDataSource(di()));
  di.registerLazySingleton<SettingRemoteDataSource>(() => SettingRemoteDataSource(di()));

  /// Bloc
  ///
  di.registerFactory(() => AppCubit());
  di.registerFactory(() => OnboardingCubit(di()));
  di.registerFactory(() => HealthCubit());
  di.registerFactory(() => SetupPersonalInfoCubit(di()));
  di.registerFactory(() => SubscriptionCubit(di()));
  di.registerFactory(() => MealsCubit(di()));
  di.registerFactory(() => WorkoutCubit(di()));
  di.registerFactory(() => SettingCubit(di()));
  di.registerFactoryParam<AuthCubit, int, int>((countryId, cityId) => AuthCubit(countryId, cityId));

  // sl.registerFactoryParam((int? param1, param2) => QuranCubit(quranRepository: sl(),initialIndex: param1),);
  // sl.registerFactory(() => LiveCubit(sl()));
}
