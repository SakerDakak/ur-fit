import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/modules/auth_module/onboarding/choose_city.dart';
import 'package:urfit/modules/auth_module/onboarding/choose_language.dart';
import 'package:urfit/modules/auth_module/onboarding/on_boarding_2.dart';
import 'package:urfit/modules/auth_module/personal_info/controller/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/auth_module/personal_info/screens/setup_personal_info_screen.dart';
import 'package:urfit/modules/home_module/screens/my_tasks_screen.dart';
import 'package:urfit/modules/meals_module/screens/filter_screen.dart';
import 'package:urfit/modules/meals_module/screens/meal_details_screen.dart';
import 'package:urfit/modules/meals_module/screens/meals_picker_screen.dart';
import 'package:urfit/modules/profile_module/screens/change_email_screen.dart';
import 'package:urfit/modules/profile_module/screens/change_password_screen.dart';
import 'package:urfit/modules/profile_module/screens/contact_us_screen.dart';
import 'package:urfit/modules/profile_module/screens/loading_plan_screen.dart';
import 'package:urfit/modules/profile_module/screens/my_plan.dart';
import 'package:urfit/modules/profile_module/screens/otp_screen.dart';
import 'package:urfit/modules/profile_module/screens/previous_plan_screen.dart';
import 'package:urfit/modules/profile_module/screens/privacy_policy_screen.dart';
import 'package:urfit/modules/profile_module/screens/settings_screen.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:urfit/modules/subscription_module/screens/payment_webview.dart';
import 'package:urfit/modules/subscription_module/screens/subscription_plans_screen.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';
import 'package:urfit/modules/workout_module/play_workout_screen.dart';
import 'package:urfit/modules/workout_module/today_workout_screen.dart';

import '../../modules/auth_module/bloc/authentication_bloc.dart';
import '../../modules/auth_module/bloc/bloc_listenable.dart';
import '../../modules/auth_module/bloc/login_bloc.dart';
import '../../modules/auth_module/onboarding/choose_country.dart';
import '../../modules/auth_module/onboarding/onboardingScreen.dart';
import '../../modules/auth_module/persentation/email_login_screen.dart';
import '../../modules/auth_module/persentation/forget_password_flow.dart';
import '../../modules/auth_module/persentation/phone_auth_flow/login_screen.dart';
import '../../modules/auth_module/persentation/phone_auth_flow/otp_screen.dart';
import '../../modules/auth_module/persentation/phone_auth_flow/phone_auth_flow.dart';
import '../../modules/auth_module/persentation/update_password.dart';
import '../../modules/auth_module/splash_screen/splash_screen.dart';
import '../../modules/home_module/screens/main_page.dart';
import '../../modules/subscription_module/data/models/package_model.dart';
import '../const.dart';
import '../utils/service_locator.dart';

class Routes {
  static const splashScreen = "splash";
  static const authenticationScreen = "/";
  static const onBoarding = "onBoarding";
  static const onBoarding2 = "onBoarding2";

  static const emailLogin = "emailLogin";
  static const registerFlow = "registerFlow";
  static const phoneLoginFlow = "phoneLoginFlow";
  static const phoneLoginScreen = "phoneLogin";
  static const otpScreen = "otpScreen";
  static const chooseLang = "chooseLang";

  static const chooseCountry = "chooseCountry";
  static const chooseCity = "chooseCity";

  static const setupPersonalInfo = '/setupPersonalInfo';

  static const mainPage = "/mainPage";
  static const forgetPasswordFlow = "forgetPasswordFlow";
  static const updatePassword = "updatePassword";
  static const searchPage = "/searchPage";

  static const focusScreen = "/focusScreen";
  static const newsPage = "/newsPage";
  static const homeBottomSheet = "/homeBottomSheet";
  static const mealsGridViewScreen = '/mealsGridViewScreen';
  static const mealsDetailsScreen = '/mealsDetailsScreen';
  static const filterScreen = '/filterScreen';
  static const subscriptionPlansScreen = '/subscriptionPlansScreen';
  static const myPlanScreen = '/myPlanScreen';
  static const myPreviousPlanScreen = '/myPreviousPlanScreen';
  static const loadingPlanScreen = '/loadingPlanScreen';
  static const privacyPolicyScreen = '/privacyPolicyScreen';
  static const contactUsScreen = '/contactUsScreen';
  static const settingsScreen = '/settingsScreen';
  static const myTasksScreen = '/myTasksScreen';
  static const todayWorkOutScreen = '/todayWorkOutScreen';
  static const playTrainingScreen = '/playTrainingScreen';
  static const changeEmailScreen = '/changeEmailScreen';
  static const changePasswordScreen = '/changePasswordScreen';
  static const otpScreenNew = '/otpScreenNew';
  static const paymentWebView = '/paymentWebView';

  static GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: authenticationScreen,
    routes: [
      GoRoute(
          path: authenticationScreen,
          name: authenticationScreen,
          // builder: (context, state) => const SplashScreen(),
          routes: [
            GoRoute(
              path: updatePassword,
              name: updatePassword,
              builder: (context, state) => const UpdatePasswordScreen(),
            ),
            GoRoute(
              path: splashScreen,
              name: splashScreen,
              builder: (context, state) => const SplashScreen(),
            ),
            GoRoute(
              path: onBoarding,
              name: onBoarding,
              builder: (context, state) => const OnboardingScreen(),
            ),
            GoRoute(
              path: onBoarding2,
              name: onBoarding2,
              builder: (context, state) => const OnBoarding2(),
            ),
            GoRoute(
              path: chooseLang,
              name: chooseLang,
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                child:  ChooseLanguage(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(opacity: animation, child: child),
              ),
              builder: (context, state) => const ChooseLanguage(),
            ),
            GoRoute(
              path: chooseCountry,
              name: chooseCountry,
              builder: (context, state) => const ChooseCountry(),
            ),
            GoRoute(
              path: chooseCity,
              name: chooseCity,
              builder: (context, state) => const ChooseCity(),
            ),
            GoRoute(
              path: emailLogin,
              name: emailLogin,
              onExit: (context, GoRouterState state) {
                return context.read<AuthenticationBloc>().state.runtimeType ==
                        AuthenticationAuthenticated ||
                    context.read<AuthenticationBloc>().state.runtimeType ==
                        AuthenticationLoginFlow ||
                    context.read<AuthenticationBloc>().state.runtimeType ==
                        AuthenticationForgetPassword ||
                    context.read<AuthenticationBloc>().state.runtimeType ==
                        AuthenticationRegister ||
                    context.read<AuthenticationBloc>().state.runtimeType ==
                        AuthenticationPersonalInfo ||
                    context.read<AuthenticationBloc>().state.runtimeType !=
                        AuthenticationAsGuest;
              },
              builder: (context, state) => const EmailLoginScreen(),
            ),
            // GoRoute(
            //     path: registerFlow,
            //     name: registerFlow,
            //     builder: (context, state) => const RegisterFlowPages(),
            //     onExit: (context, state) {
            //       print(
            //           "on exit :  ${context.read<AuthenticationBloc>().state.runtimeType}");
            //       if (context.read<AuthenticationBloc>().state.runtimeType ==
            //               AuthenticationAuthenticated ||
            //           context.read<AuthenticationBloc>().state.runtimeType ==
            //               AuthenticatedWithoutSubscription) {
            //         return true;
            //       } else {
            //         rootScaffoldKey.currentContext
            //             ?.read<LoginBloc>()
            //             .add(ResetBlocEvent());
            //         rootScaffoldKey.currentContext
            //             ?.read<AuthenticationBloc>()
            //             .add(GoBack());
            //       }
            //       return true;
            //     }),
            GoRoute(
              path: forgetPasswordFlow,
              name: forgetPasswordFlow,
              builder: (context, state) => const ForgetPasswordFlow(),
            ),
            GoRoute(
                path: phoneLoginFlow,
                name: phoneLoginFlow,
                onExit: (context, state) {
                  if (rootScaffoldKey.currentContext
                              ?.read<AuthenticationBloc>()
                              .state
                              .runtimeType !=
                          AuthenticationAuthenticated &&
                      rootScaffoldKey.currentContext
                              ?.read<AuthenticationBloc>()
                              .state
                              .runtimeType !=
                          AuthenticationAsGuest &&
                      rootScaffoldKey.currentContext
                              ?.read<AuthenticationBloc>()
                              .state
                              .runtimeType !=
                          AuthenticationPersonalInfo) {
                    rootScaffoldKey.currentContext
                        ?.read<AuthenticationBloc>()
                        .add(GoBack());
                  }
                  return true;
                },
                builder: (context, state) => const PhoneAuthFlowPages(),
                routes: [
                  GoRoute(
                    path: phoneLoginScreen,
                    name: phoneLoginScreen,
                    builder: (context, state) => const LoginScreen(),
                  ),
                  GoRoute(
                    path: otpScreen,
                    name: otpScreen,
                    builder: (context, state) => const OTPScreen(),
                  ),
                ],
                redirect: (BuildContext context, GoRouterState state) {
                  if (!context
                      .read<LoginBloc>()
                      .state
                      .verificationId
                      .isNotEmpty) {
                    return "$phoneLoginFlow/$phoneLoginScreen";
                  } else {
                    return "$phoneLoginFlow/$otpScreen";
                  }
                }),
          ],
          // builder: (context, state) => const AuthenticationScreen(),
          redirect: (BuildContext context, GoRouterState state) {
            // print(context.read<AuthenticationBloc>().state.runtimeType);

            switch (context.read<AuthenticationBloc>().state.runtimeType) {
              case AuthenticationUninitialized:
                return "/$splashScreen";
              case AuthenticationOnBoarding:
                return "/$onBoarding";

              case AuthenticationAuthenticated:
                return "$mainPage?guest=false";

              case AuthenticationUnauthenticated:
                return "/$emailLogin";

              case AuthenticationRegister:
                return "/$registerFlow";

              case AuthenticationForgetPassword:
                return "/$forgetPasswordFlow";

              case AuthenticationAsGuest:
                return "$mainPage?guest=true";

              case AuthenticationLoginFlow:
                return "/$phoneLoginFlow";

              case AuthenticatedWithoutSubscription:
                return "$mainPage?guest=true";

              case AuthenticationUpdatePassword:
                return "/$updatePassword";

              case AuthenticationGoToChooseLang:
                return "/$chooseLang";
              case AuthenticationChooseCountry:
                return "/$chooseCity";
              case AuthenticationChooseLang:
                return "/$chooseCountry";
              case AuthenticationPersonalInfo:
                return "$setupPersonalInfo";
              case AuthenticationOnBoardingTwo:
                return "/$onBoarding2";
            }
            return null;
          }),
      GoRoute(
          path: mainPage,
          name: mainPage,
          builder: (context, state) {
            dynamic guest = state.uri.queryParameters["guest"] as String;
            guest = guest == "true" ? true : false;
            return MainPage(
              isGuest: guest,
            );
          },
          onExit: (context, state) {
            return context.read<AuthenticationBloc>().state.runtimeType ==
                AuthenticationUnauthenticated;
          },
          redirect: (BuildContext context, GoRouterState state) {
            // print("mainpagge redirect $state");
            if (context.read<AuthenticationBloc>().state.runtimeType ==
                AuthenticationUnauthenticated) {
              return authenticationScreen;
            }
            return null;
          }),
      GoRoute(
        path: mealsGridViewScreen,
        name: mealsGridViewScreen,
        builder: (context, state) {
          return const MealsPickerScreen();
        },
      ),
      GoRoute(
          path: mealsDetailsScreen + '/:id',
          name: mealsDetailsScreen,
          builder: (context, state) {
            final id = state.pathParameters['id'] as String;

            return MealDetailsScreen(
              id: int.parse(id),
            );
          }),
      GoRoute(
          path: filterScreen,
          name: filterScreen,
          builder: (context, state) {
            return const FilterScreen();
          }),

      /// subscription plans route
      GoRoute(
        path: subscriptionPlansScreen,
        name: subscriptionPlansScreen,
        builder: (context, state) {
          final planType =state.extra as PlanType? ?? PlanType.both;
          return SubscriptionPlansScreen(planType: planType,);
        },
      ),

      /// payment webview route
      GoRoute(
        path: paymentWebView,
        name: paymentWebView,
        builder: (context, state) {
          final url = state.uri.queryParameters['url'] as String;
          print("Params : ${state.uri.queryParameters}");
          return Scaffold(body: PaymentWebView(url: url));
        },
      ),

      /// setup personal info route
      GoRoute(
        path: setupPersonalInfo,
        name: setupPersonalInfo,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => sl<SetupPersonalInfoCubit>(),
            child: const SetupPersonalInfoScreen(),
          );
        },
      ),

      /// my plan route
      GoRoute(
        path: loadingPlanScreen,
        name: loadingPlanScreen,
        builder: (context, state) {
          return  BlocProvider(
  create: (context) => sl<SetupPersonalInfoCubit>(),
  child: const LoadingPlanScreen(),
);
        },
      ),
      GoRoute(
        path: todayWorkOutScreen,
        name: todayWorkOutScreen,
        builder: (context, state) {
          final List<Exercise> exercises = state.extra as List<Exercise>;
          return  TodayWorkoutScreen(exercises: exercises,);
        },
      ),
      GoRoute(
        path: playTrainingScreen + '/:title',
        name: playTrainingScreen,
        builder: (context, state) {
          final title = state.pathParameters['title'] as String;
          final exercise = state.extra as Exercise;
          return PlayWorkoutScreen(title: title, exercise: exercise);
        },
      ),

      /// my previous plan route
      GoRoute(
        path: myPreviousPlanScreen,
        name: myPreviousPlanScreen,
        builder: (context, state) {
          return const PreviousPlanScreen();
        },
      ),

      /// loading plan route
      GoRoute(
        path: myPlanScreen,
        name: myPlanScreen,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => sl<SetupPersonalInfoCubit>(),
            child: const MyPlanScreen(),
          );
        },
      ),

      /// privacy policy route
      GoRoute(
        path: privacyPolicyScreen + '/:key',
        name: privacyPolicyScreen,
        builder: (context, state) {
          final key = state.pathParameters['key'] as String;
          return  PrivacyPolicyScreen(pageKey: key,);
        },
      ),

      /// contact us route
      GoRoute(
        path: contactUsScreen,
        name: contactUsScreen,
        builder: (context, state) {
          return const ContactUsScreen();
        },
      ),

      /// settings screen route
      GoRoute(
        path: settingsScreen,
        name: settingsScreen,
        builder: (context, state) {
          return const SettingsScreen();
        },
      ),

      /// settings screen route
      GoRoute(
        path: myTasksScreen,
        name: myTasksScreen,
        builder: (context, state) {
          return const MyTasksScreen();
        },
      ),

      /// change email screen route
      GoRoute(
        path: changeEmailScreen,
        name: changeEmailScreen,
        builder: (context, state) {
          return const ChangeEmailScreen();
        },
      ),

      /// change password screen route
      GoRoute(
        path: changePasswordScreen,
        name: changePasswordScreen,
        builder: (context, state) {
          return const ChangePasswordScreen();
        },
      ),

      /// otp screen new route
      GoRoute(
        path: otpScreenNew,
        name: otpScreenNew,
        builder: (context, state) {
          return const OtpScreen();
        },
      ),
    ],

    refreshListenable: BlocListenable(sl<AuthenticationBloc>()),
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
