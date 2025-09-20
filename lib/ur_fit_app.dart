import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/app_theme.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/meals_module/controller/meals_cubit.dart';
import 'package:urfit/modules/profile_module/controller/setting_cubit.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';

import 'core/presentation/routes/routes.dart';
import 'di.dart';
import 'modules/home_module/controller/cubit/health_cubit.dart';
import 'modules/onboarding/controller/onboarding_cubit.dart';

class UrFitApp extends StatelessWidget {
  const UrFitApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SharedPreferences.getInstance().then((prefs) {
    //   prefs.clear(); // Clear shared preferences for testing purposes
    // });
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => di<AppCubit>()..init(),
        ),
        BlocProvider(
          create: (BuildContext context) => di<HealthCubit>(),
        ),
        BlocProvider(create: (BuildContext context) => di<OnboardingCubit>()),
        BlocProvider(create: (BuildContext context) => di<MealsCubit>()),
        BlocProvider(create: (BuildContext context) => di<WorkoutCubit>()),
        BlocProvider(create: (BuildContext context) => di<SettingCubit>()),
      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            ScreenType screenType) {
          return GlobalLoaderOverlay(
            overlayColor: Colors.transparent,
            overlayWidgetBuilder: (_) {
              return Center(
                child: BlocBuilder<AppCubit, AppState>(
                  builder: (context, state) {
                    return SpinKitWaveSpinner(
                      size: 100,
                      color: Co.secondaryColor,
                      waveColor: Theme.of(context).colorScheme.primary,
                      trackColor: Theme.of(context).colorScheme.primary,
                    );
                  },
                ),
              );
            },

            //cdcd
            child: MediaQuery(
              data: MediaQuery.of(context)
                  .copyWith(textScaler: const TextScaler.linear(1.0)),
              child: BlocBuilder<AppCubit, AppState>(
                // buildWhen: (previous, current) {
                //   return previous != current;
                // },
                builder: (context, state) {
                  return MaterialApp.router(
                    // AppConst.navigatorKey: AppConst.navigatorKey,
                    // routeInformationParser: MyRouteInformationParser(),
                    // routerDelegate: MyRouterDelegate(),
                    routerConfig: AppRouter.appRouter,
                    localizationsDelegates: L10n.localizationDelegates,
                    supportedLocales: L10n.supportedLocales,
                    locale: Locale(state.currentLocal),
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
