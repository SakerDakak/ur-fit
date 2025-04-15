import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:urfit/core/style/app_theme.dart';
import 'package:urfit/core/shared/appCubit/app_cubit.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/utils/bloc_observer.dart';
import 'package:urfit/generated/locale_keys.g.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/profile_module/controller/setting_cubit.dart';
import 'package:urfit/modules/profile_module/repo/setting_repo.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';

import 'modules/auth_module/bloc/authentication_bloc.dart';
import 'modules/auth_module/bloc/login_bloc.dart';
import 'modules/auth_module/onboarding/controller/onboarding_cubit.dart';
import 'modules/auth_module/splash_screen/presentation/manager/check_version_cubit.dart';
import 'core/api/api_client.dart';
import 'core/const.dart';
import 'core/routes/routes.dart';
import 'core/utils/hive_services.dart';
import 'core/utils/pref_utils.dart';
import 'core/utils/service_locator.dart';
import 'generated/codegen_loader.g.dart';
import 'modules/home_module/controller/cubit/health_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ServiceLocator().init();
  await PrefUtils().init();
  await EasyLocalization.ensureInitialized();
  await HiveServices().init();
  await HiveServices().register();
  await HiveServices().openBoxes();
  await sl<DioServices>().init();
  Bloc.observer = MyBlocObserver();

  runApp(
    DevicePreview(
      enabled: false, // Disable in release mode
      builder: (context) => EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'resources/langs',
        fallbackLocale: const Locale('ar'),
        startLocale: const Locale('ar'),
        assetLoader: const CodegenLoader(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => sl<AppCubit>()..init(),
        ),
        BlocProvider(
          create: (BuildContext context) => sl<AuthenticationBloc>(),
        ),
        BlocProvider(
          create: (BuildContext context) => sl<LoginBloc>(),
        ),
        BlocProvider(
          create: (BuildContext context) =>
              CheckVersionCubit(sl<DioServices>()),
        ),
        BlocProvider(
          create: (BuildContext context) => sl<HealthCubit>(),
        ),
        BlocProvider(create: (BuildContext context) => sl<OnboardingCubit>()),
        BlocProvider(create: (BuildContext context) => sl<MealsCubit>()),
        BlocProvider(create: (BuildContext context) => sl<WorkoutCubit>()),
        BlocProvider(create: (BuildContext context) => sl<SettingCubit>()),

        BlocProvider(create: (BuildContext context) => sl<SubscriptionCubit>()),

      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            ScreenType screenType) {
          return GlobalLoaderOverlay(
            overlayColor: Colors.transparent,
            useDefaultLoading: true,

            overlayWidgetBuilder: (_) {
              return Center(
                child: BlocBuilder<AppCubit, AppState>(
                  builder: (context, state) {
                    return SpinKitWaveSpinner(
                      size: 100,
                      color: AppColors.secondaryColor,
                      waveColor: AppColors.primaryColor,
                      trackColor: AppColors.primaryColor,
                    );
                  },
                ),
              );
            },

            //cdcd
            child: MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: TextScaler.linear(1.0)),
              child: BlocBuilder<AppCubit, AppState>(
                // buildWhen: (previous, current) {
                //   return previous != current;
                // },
                builder: (context, state) {
                  // PrefUtils().setLang("en");
                  final String? lang = PrefUtils().getLang();
                  print('lang: $lang');
                  EasyLocalization.of(context)
                      ?.setLocale(Locale(lang ?? state.currentLocal));
                  return MaterialApp.router(
                    // navigatorKey: navigatorKey,
                    // routeInformationParser: MyRouteInformationParser(),
                    // routerDelegate: MyRouterDelegate(),
                    routerConfig: Routes.router,
                    localizationsDelegates: context.localizationDelegates,
                    supportedLocales: context.supportedLocales,
                    locale: context.locale,
                    scaffoldMessengerKey: rootScaffoldKey,
                    title: LocaleKeys.app_name.tr(),
                    debugShowCheckedModeBanner: false,
                    themeMode: ThemeMode.dark,
                    theme: AppTheme.darkTheme(state.isFemale),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
