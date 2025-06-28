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
import 'package:urfit/modules/subscription_module/screens/payment_webview.dart';
import 'package:urfit/modules/subscription_module/screens/subscription_plans_screen.dart';
import 'package:urfit/modules/workout_module/data/model/workout_model.dart';
import 'package:urfit/modules/workout_module/play_workout_screen.dart';
import 'package:urfit/modules/workout_module/today_workout_screen.dart';

import '../../modules/auth_module/bloc/authentication_bloc/authentication_bloc.dart';
import '../../modules/auth_module/bloc/bloc_listenable.dart';
import '../../modules/auth_module/bloc/login_bloc.dart';
import '../../modules/auth_module/onboarding/choose_country.dart';
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
  static const authenticationScreen = "/";
  // static const onBoarding = "onBoarding";

  // static const registerFlow = "registerFlow";

  // static const searchPage = "/searchPage";

  // static const focusScreen = "/focusScreen";
  // static const newsPage = "/newsPage";
  // static const homeBottomSheet = "/homeBottomSheet";

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
              path: UpdatePasswordScreen.route,
              name: UpdatePasswordScreen.route,
              builder: (context, state) => const UpdatePasswordScreen(),
            ),
            GoRoute(
              path: SplashScreen.route,
              name: SplashScreen.route,
              builder: (context, state) => const SplashScreen(),
            ),
            // GoRoute(
            //   path: onBoarding,
            //   name: onBoarding,
            //   builder: (context, state) => const OnboardingScreen(),
            // ),
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
            GoRoute(
              path: EmailLoginScreen.route,
              name: EmailLoginScreen.route,
              onExit: (context, GoRouterState state) {
                return context.read<AuthenticationBloc>().state.runtimeType == AuthenticationAuthenticated ||
                    context.read<AuthenticationBloc>().state.runtimeType == AuthenticationLoginFlow ||
                    context.read<AuthenticationBloc>().state.runtimeType == AuthenticationForgetPassword ||
                    context.read<AuthenticationBloc>().state.runtimeType == AuthenticationRegister ||
                    context.read<AuthenticationBloc>().state.runtimeType == AuthenticationPersonalInfo ||
                    context.read<AuthenticationBloc>().state.runtimeType != AuthenticationAsGuest;
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
              path: ForgetPasswordFlow.route,
              name: ForgetPasswordFlow.route,
              builder: (context, state) => const ForgetPasswordFlow(),
            ),
            GoRoute(
                path: PhoneAuthFlowPages.route,
                name: PhoneAuthFlowPages.route,
                onExit: (context, state) {
                  if (rootScaffoldKey.currentContext?.read<AuthenticationBloc>().state.runtimeType !=
                          AuthenticationAuthenticated &&
                      rootScaffoldKey.currentContext?.read<AuthenticationBloc>().state.runtimeType !=
                          AuthenticationAsGuest &&
                      rootScaffoldKey.currentContext?.read<AuthenticationBloc>().state.runtimeType !=
                          AuthenticationPersonalInfo) {
                    rootScaffoldKey.currentContext?.read<AuthenticationBloc>().add(GoBack());
                  }
                  return true;
                },
                builder: (context, state) => const PhoneAuthFlowPages(),
                routes: [
                  GoRoute(
                    path: LoginScreen.route,
                    name: LoginScreen.route,
                    builder: (context, state) => const LoginScreen(),
                  ),
                  GoRoute(
                    path: OTPScreen.route,
                    name: OTPScreen.route,
                    builder: (context, state) => const OTPScreen(),
                  ),
                ],
                redirect: (BuildContext context, GoRouterState state) {
                  if (!context.read<LoginBloc>().state.verificationId.isNotEmpty) {
                    return "${PhoneAuthFlowPages.route}/${LoginScreen.route}";
                  } else {
                    return "${PhoneAuthFlowPages.route}/${OTPScreen.route}";
                  }
                }),
          ],
          // builder: (context, state) => const AuthenticationScreen(),
          redirect: (BuildContext context, GoRouterState state) {
            // print(context.read<AuthenticationBloc>().state.runtimeType);

            switch (context.read<AuthenticationBloc>().state.runtimeType) {
              case AuthenticationUninitialized:
                return "/${SplashScreen.route}";
              // case AuthenticationOnBoarding:
              //   return "/$onBoarding";

              case AuthenticationAuthenticated:
                return "${MainPage.route}?guest=false";

              case AuthenticationUnauthenticated:
                return "/${EmailLoginScreen.route}";

              // case AuthenticationRegister:
              //   return "/$registerFlow";

              case AuthenticationForgetPassword:
                return "/${ForgetPasswordFlow.route}";

              case AuthenticationAsGuest:
                return "${MainPage.route}?guest=true";

              case AuthenticationLoginFlow:
                return "/${PhoneAuthFlowPages.route}";

              case AuthenticatedWithoutSubscription:
                return "${MainPage.route}?guest=true";

              case AuthenticationUpdatePassword:
                return "/${UpdatePasswordScreen.route}";

              case AuthenticationGoToChooseLang:
                return "/${ChooseLanguage.route}";
              case AuthenticationChooseCountry:
                return "/${ChooseCity.route}";
              case AuthenticationChooseLang:
                return "/${ChooseCountry.route}";
              case AuthenticationPersonalInfo:
                return "${SetupPersonalInfoScreen.route}";
              case AuthenticationOnBoardingTwo:
                return "/${OnBoardingSecScreen.route}";
            }
            return null;
          }),
      GoRoute(
          path: MainPage.route,
          name: MainPage.route,
          builder: (context, state) {
            dynamic guest = state.uri.queryParameters["guest"] as String;
            guest = guest == "true" ? true : false;
            return MainPage(
              isGuest: guest,
            );
          },
          onExit: (context, state) {
            return context.read<AuthenticationBloc>().state.runtimeType == AuthenticationUnauthenticated;
          },
          redirect: (BuildContext context, GoRouterState state) {
            // print("mainpagge redirect $state");
            if (context.read<AuthenticationBloc>().state.runtimeType == AuthenticationUnauthenticated) {
              return authenticationScreen;
            }
            return null;
          }),
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
        path: SetupPersonalInfoScreen.route,
        name: SetupPersonalInfoScreen.route,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => sl<SetupPersonalInfoCubit>(),
            child: const SetupPersonalInfoScreen(),
          );
        },
      ),

      /// my plan route
      GoRoute(
        path: LoadingPlanScreen.route,
        name: LoadingPlanScreen.route,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => sl<SetupPersonalInfoCubit>(),
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
            create: (context) => sl<SetupPersonalInfoCubit>(),
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
        path: OtpScreen.route,
        name: OtpScreen.route,
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
