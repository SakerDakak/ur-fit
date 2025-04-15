// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:parts_of_cars/features/auth/persentation/login_flow/phone_auth_flow.dart';
// import 'package:parts_of_cars/features/auth/persentation/update_password.dart';
// import 'package:parts_of_cars/features/location/location_screen.dart';
//
// import '../../../core/utils/service_locator.dart';
// import '../../car_info/car_info_screen.dart';
// import '../../location/location_flow_page.dart';
// import '../../main/main_screen.dart';
// import '../../search_brand/views/search_brand_screen.dart';
// import '../bloc/authentication_bloc.dart';
// import '../onboarding/onboardingScreen.dart';
// import '../splash/splash_screen.dart';
// import 'login_flow/email_login_screen.dart';
//
// class AuthenticationScreen extends StatelessWidget {
//   const AuthenticationScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<AuthenticationBloc, AuthenticationState>(
//       builder: (context, state) {
//         print(state.runtimeType);
//         //
//         // if (state is AuthenticationUninitialized) {
//         //   return const SplashScreen();
//         // }
//         // if (state is AuthenticationOnBoarding) {
//         //   return const OnboardingScreen();
//         // }
//         // if (state is AuthenticationAuthenticated) {
//         //   return const MainScreen();
//         // }
//         // if (state is AuthenticationUnauthenticated) {
//         //   return const SearchBrandScreen();
//         // }
//         // if (state is AuthenticationRegisterCar) {
//         //   return const CarInfoScreen();
//         // }
//         // if(state is AuthenticationAddAddress){
//         //   return const LocationFlowPage();
//         // }
//         // if(state is AuthenticationAsGuest){
//         //   return const MainScreen();
//         // }
//         // if(state is AuthenticationLoginFlow){
//         //   return const LoginFlowPages();
//         // }
//         // if(state is AuthenticationUpdateUserData){
//         //   return const UpdateUserDataScreen();
//         // }
//         return SizedBox();
//       },
//     );
//   }
// }
