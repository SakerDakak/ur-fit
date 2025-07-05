import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/appCubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/app_theme.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/utils/bloc_observer.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/profile_module/controller/setting_cubit.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';

import 'core/presentation/routes/routes.dart';
import 'core/presentation/utils/hive_services.dart';
import 'core/presentation/utils/pref_utils.dart';
import 'firebase_options.dart';
import 'modules/home_module/controller/cubit/health_cubit.dart';
import 'modules/onboarding/controller/onboarding_cubit.dart';
import 'service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();
  await HiveServices().init();
  await HiveServices().register();
  await HiveServices().openBoxes();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    DevicePreview(
        enabled: false, // Disable in release mode
        builder: (context) => const MyApp()),
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
          create: (BuildContext context) => sl<HealthCubit>(),
        ),
        BlocProvider(create: (BuildContext context) => sl<OnboardingCubit>()),
        BlocProvider(create: (BuildContext context) => sl<MealsCubit>()),
        BlocProvider(create: (BuildContext context) => sl<WorkoutCubit>()),
        BlocProvider(create: (BuildContext context) => sl<SettingCubit>()),
        BlocProvider(create: (BuildContext context) => sl<SubscriptionCubit>()),
      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation, ScreenType screenType) {
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
                      waveColor: Theme.of(context).colorScheme.primary,
                      trackColor: Theme.of(context).colorScheme.primary,
                    );
                  },
                ),
              );
            },

            //cdcd
            child: MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
              child: BlocBuilder<AppCubit, AppState>(
                // buildWhen: (previous, current) {
                //   return previous != current;
                // },
                builder: (context, state) {
                  // PrefUtils().setLang("ar");
                  final String? lang = PrefUtils().getLang();
                  print('lang: $lang');
                  return MaterialApp.router(
                    // AppConst.navigatorKey: AppConst.navigatorKey,
                    // routeInformationParser: MyRouteInformationParser(),
                    // routerDelegate: MyRouterDelegate(),
                    routerConfig: AppRouter.appRouter,
                    localizationsDelegates: L10n.localizationDelegates,
                    supportedLocales: L10n.supportedLocales,
                    locale: Locale(lang ?? 'ar'),
                    scaffoldMessengerKey: AppConst.rootScaffoldKey,
                    title: "URFIT",
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
