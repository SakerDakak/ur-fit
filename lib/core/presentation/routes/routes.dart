import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_cubit.dart';
import 'package:urfit/modules/auth/persentation/views/forget_password_otp_screen.dart';
import 'package:urfit/modules/auth/persentation/views/forget_password_screen.dart';
import 'package:urfit/modules/auth/persentation/views/register_otp_screen.dart';
import 'package:urfit/modules/home_module/screens/my_tasks_screen.dart';
import 'package:urfit/modules/meals_module/screens/filter_screen.dart';
import 'package:urfit/modules/meals_module/screens/meal_details_screen.dart';
import 'package:urfit/modules/meals_module/screens/meals_picker_screen.dart';
import 'package:urfit/modules/onboarding/views/choose_city.dart';
import 'package:urfit/modules/onboarding/views/choose_language.dart';
import 'package:urfit/modules/onboarding/views/on_boarding_2.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/screens/equipment_selection_screen.dart';
import 'package:urfit/modules/personal_info/screens/personal_info_layout_screen.dart';
import 'package:urfit/modules/personal_info/screens/start_personal_info_screen.dart';
import 'package:urfit/modules/profile_module/screens/change_email_screen.dart';
import 'package:urfit/modules/profile_module/screens/change_password_screen.dart';
import 'package:urfit/modules/profile_module/screens/contact_us_screen.dart';
import 'package:urfit/modules/profile_module/screens/loading_plan_screen.dart';
import 'package:urfit/modules/profile_module/screens/my_plan.dart';
import 'package:urfit/modules/profile_module/screens/otp_screen_new.dart';
import 'package:urfit/modules/profile_module/screens/previous_plan_screen.dart';
import 'package:urfit/modules/profile_module/screens/privacy_policy_screen.dart';
import 'package:urfit/modules/profile_module/screens/settings_screen.dart';
import 'package:urfit/modules/subscription_module/screens/payment_webview.dart';
import 'package:urfit/modules/subscription_module/screens/subscription_plans_screen.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';
import 'package:urfit/modules/workout_module/play_workout_screen.dart';
import 'package:urfit/modules/workout_module/today_workout_screen.dart';

import '../../../di.dart';
// import '../../../modules/auth/persentation/bloc/authentication_bloc/authentication_bloc.dart';
// import '../../../modules/auth/persentation/bloc/login_bloc.dart';
import '../../../modules/auth/persentation/views/auth_screen.dart';
import '../../../modules/auth/persentation/views/update_password.dart';
import '../../../modules/home_module/screens/main_page.dart';
import '../../../modules/onboarding/views/choose_country.dart';
import '../../../modules/splash_screen/splash_screen.dart';
import '../../../modules/subscription_module/data/models/package_model.dart';

class AppRouter {
  static const authenticationScreen = "/";
  // static const onBoarding = "onBoarding";

  // static const registerFlow = "registerFlow";

  // static const searchPage = "/searchPage";

  // static const focusScreen = "/focusScreen";
  // static const newsPage = "/newsPage";
  // static const homeBottomSheet = "/homeBottomSheet";

  static GoRouter appRouter = GoRouter(
    navigatorKey: AppConst.navigatorKey,
    initialLocation: SplashScreen.route,
    routes: [
      GoRoute(
        path: SplashScreen.route,
        name: SplashScreen.route,
        builder: (context, state) => const SplashScreen(),
      ),

      /// onboarding routes
      GoRoute(
        path: OnBoardingSecScreen.route,
        name: OnBoardingSecScreen.route,
        builder: (context, state) => const OnBoardingSecScreen(),
      ),
      GoRoute(
        path: ChooseLanguage.route,
        name: ChooseLanguage.route,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const ChooseLanguage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
        // builder: (context, state) => const ChooseLanguage(),
      ),
      GoRoute(
        path: ChooseCountry.route,
        name: ChooseCountry.route,
        builder: (context, state) => const ChooseCountry(),
      ),
      GoRoute(
        path: ChooseCity.route,
        name: ChooseCity.route,
        builder: (context, state) => const ChooseCity(),
      ),

      /// auth routes
      GoRoute(
        path: AuthScreen.route,
        name: AuthScreen.route,
        builder: (context, state) {
          return const AuthScreen();
        },
      ),
      GoRoute(
        path: RegisterOTPScreen.routeWzExtra,
        name: RegisterOTPScreen.routeWzExtra,
        builder: (context, state) {
          return BlocProvider.value(value: state.extra as AuthCubit, child: const RegisterOTPScreen());
        },
      ),

      /// forget password routes
      GoRoute(
        path: ForgetPasswordScreen.route,
        name: ForgetPasswordScreen.route,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(
        path: ForgetPasswordOtpScreen.route,
        name: ForgetPasswordOtpScreen.route,
        builder: (context, state) {
          return ForgetPasswordOtpScreen(email: state.pathParameters['email']!);
        },
      ),
      GoRoute(
        path: UpdatePasswordScreen.route,
        name: UpdatePasswordScreen.route,
        builder: (context, state) => UpdatePasswordScreen(email: state.pathParameters['email']!),
      ),

      ///
      ///
      ///
      ///
      ///
      ///
      ///
      ///
      ///
      ///
      ///
      ///
      ///
      ///
      ///
      GoRoute(
        path: MainPage.routeWithBool(null),
        name: MainPage.routeWithBool(null),
        builder: (context, state) {
          return MainPage(isGuest: state.uri.queryParameters["guest"] == "true");
        },
        // onExit: (context, state) {
        //   return context.read<AuthenticationBloc>().state.runtimeType == AuthenticationUnauthenticated;
        // },
        // redirect: (BuildContext context, GoRouterState state) {
        //   // print("mainpagge redirect $state");
        //   if (context.read<AuthenticationBloc>().state.runtimeType == AuthenticationUnauthenticated) {
        //     return authenticationScreen;
        //   }
        //   return null;
        // }
      ),
      GoRoute(
        path: MealsPickerScreen.route,
        name: MealsPickerScreen.route,
        builder: (context, state) {
          return const MealsPickerScreen();
        },
      ),
      GoRoute(
          path: '${MealDetailsScreen.routeWzId}/:id',
          name: MealDetailsScreen.routeWzId,
          builder: (context, state) {
            final id = state.pathParameters['id'] as String;

            return MealDetailsScreen(
              id: int.parse(id),
            );
          }),
      GoRoute(
          path: FilterScreen.route,
          name: FilterScreen.route,
          builder: (context, state) {
            return const FilterScreen();
          }),

      /// subscription plans route
      GoRoute(
        path: SubscriptionPlansScreen.routeWzExtra,
        name: SubscriptionPlansScreen.routeWzExtra,
        builder: (context, state) {
          final planType = state.extra as PlanType? ?? PlanType.both;
          return SubscriptionPlansScreen(
            planType: planType,
          );
        },
      ),

      /// payment webview route
      GoRoute(
        path: PaymentWebView.route,
        name: PaymentWebView.route,
        builder: (context, state) {
          final url = state.uri.queryParameters['url'] as String;
          print("Params : ${state.uri.queryParameters}");
          return Scaffold(body: PaymentWebView(url: url));
        },
      ),

      /// setup personal info route
      GoRoute(
        path: StartPersonalInfoScreen.route,
        name: StartPersonalInfoScreen.route,
        builder: (context, state) => const StartPersonalInfoScreen(),
      ),
      GoRoute(
        path: PresonalInfoLayoutScreen.route,
        name: PresonalInfoLayoutScreen.route,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => di<SetupPersonalInfoCubit>(),
            child: const PresonalInfoLayoutScreen(),
          );
        },
      ),
      GoRoute(
        path: EquipmentSelectionScreen.route,
        name: EquipmentSelectionScreen.route,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => di<SetupPersonalInfoCubit>(),
            child: const EquipmentSelectionScreen(),
          );
        },
      ),

      /// my plan route
      GoRoute(
        path: LoadingPlanScreen.route,
        name: LoadingPlanScreen.route,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => di<SetupPersonalInfoCubit>(),
            child: const LoadingPlanScreen(),
          );
        },
      ),
      GoRoute(
        path: TodayWorkoutScreen.routeWzExtra,
        name: TodayWorkoutScreen.routeWzExtra,
        builder: (context, state) {
          final List<Exercise> exercises = state.extra as List<Exercise>;
          return TodayWorkoutScreen(exercises: exercises);
        },
      ),
      GoRoute(
        path: '${PlayWorkoutScreen.routeWzTitleAnExtra}/:title',
        name: PlayWorkoutScreen.routeWzTitleAnExtra,
        builder: (context, state) {
          final title = state.pathParameters['title'] as String;
          final exercise = state.extra as Exercise;
          return PlayWorkoutScreen(title: title, exercise: exercise);
        },
      ),

      /// my previous plan route
      GoRoute(
        path: PreviousPlanScreen.route,
        name: PreviousPlanScreen.route,
        builder: (context, state) {
          return const PreviousPlanScreen();
        },
      ),

      /// loading plan route
      GoRoute(
        path: MyPlanScreen.route,
        name: MyPlanScreen.route,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => di<SetupPersonalInfoCubit>(),
            child: const MyPlanScreen(),
          );
        },
      ),

      /// privacy policy route
      GoRoute(
        path: '${PrivacyPolicyScreen.routeWzKey}/:key',
        name: PrivacyPolicyScreen.routeWzKey,
        builder: (context, state) {
          final key = state.pathParameters['key'] as String;
          return PrivacyPolicyScreen(pageKey: key);
        },
      ),

      /// contact us route
      GoRoute(
        path: ContactUsScreen.route,
        name: ContactUsScreen.route,
        builder: (context, state) {
          return const ContactUsScreen();
        },
      ),

      /// settings screen route
      GoRoute(
        path: SettingsScreen.route,
        name: SettingsScreen.route,
        builder: (context, state) {
          return const SettingsScreen();
        },
      ),

      /// settings screen route
      GoRoute(
        path: MyTasksScreen.route,
        name: MyTasksScreen.route,
        builder: (context, state) {
          return const MyTasksScreen();
        },
      ),

      /// change email screen route
      GoRoute(
        path: ChangeEmailScreen.route,
        name: ChangeEmailScreen.route,
        builder: (context, state) {
          return const ChangeEmailScreen();
        },
      ),

      /// change password screen route
      GoRoute(
        path: ChangePasswordScreen.route,
        name: ChangePasswordScreen.route,
        builder: (context, state) {
          return const ChangePasswordScreen();
        },
      ),

      /// otp screen new route
      GoRoute(
        path: OtpScreenNew.route,
        name: OtpScreenNew.route,
        builder: (context, state) {
          return const OtpScreenNew();
        },
      ),
    ],

    // refreshListenable: BlocListenable(sl<AuthenticationBloc>()),
    //
    // redirect: (BuildContext context, GoRouterState state){
    //   if(context.read<AuthenticationBloc>().state.runtimeType == AuthenticationUnauthenticated ){
    //     return authenticationScreen;
    //   }else{
    //     return
    //   }
    //   // print(context.read<AppCubit>().));
    //
    // }
  );

  ///Navigate back to specific route
  // static void popUntilPath(BuildContext context, String routePath) {
  //   while (
  //   router.routerDelegate.currentConfiguration.matches.last.matchedLocation !=
  //       routePath) {
  //     if (!context.canPop()) {
  //       return;
  //     }
  //     context.pop();
  //   }
  // }
}
