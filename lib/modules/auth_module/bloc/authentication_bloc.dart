import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/modules/auth_module/data/models/slider_image_model.dart';
import 'package:urfit/modules/auth_module/data/models/user/cached_user.dart';
import 'package:urfit/modules/auth_module/onboarding/model/country/country_model.dart';

import '../../../../core/utils/loading_helper.dart';
import '../../../../core/utils/pref_utils.dart';
import '../../../../core/utils/service_locator.dart';
import '../../../core/api/api_client.dart';
import '../../../core/const.dart';
import '../../../core/routes/routes.dart';
import '../data/models/user/user_model.dart';
import '../onboarding/controller/onboarding_cubit.dart';
import '../repo/authentication_repo.dart';
import 'login_bloc.dart';
import 'package:go_router/go_router.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final BaseAuthenticationRepo authenticationRepo;
  UserModel? currentUser;

  AuthenticationBloc(this.authenticationRepo)
      : super(AuthenticationUninitialized()) {
    //events
    on<AppStarted>(_appStarted); // to check if user exists
    on<LoggedIn>(_loggedIn);
    on<RegisterEvent>(_register);
    // on<ConfirmEmail>(_confirmEmail);
    on<LoggedOut>(_loggedOut);
    on<LoginFlow>(_logInFlow);
    on<ForgetPasswordFlowEvent>(_forgetPasswordFlow);
    on<GetUserData>(_getUserData);
    on<GoBack>(_goBack);
    on<CheckOnBoardingEvent>(_checkOnBoarding);
    on<DoneOnBoardingEvent>(_doneOnBoarding);
    on<GoToChooseCity>(_goToChooseCity);

    on<GuestLogin>(_guestLogin);
    on<GoToChooseLanguage>(_goToChooseLanguage);
    on<DoneChooseLanguageEvent>(_doneChooseLanguageEvent);
    on<UpdatePasswordEvent>(_updatePasswordEvent);
    on<UpdateSubscriptionEvent>(_updateSubscription);
    on<GetUserDataFromServer>(_getUserDataFromServer);
    on<GetSliderImageEvent>(_getSliderImage);
    on<GoToOnBoardingTwo>(_goToOnBoardingTwo);
    // on<NavigateToRequestPrice>(_navigateToRequestPrice);
  }

  Future<FutureOr<void>> _appStarted(
      AppStarted event, Emitter<AuthenticationState> emit) async {
    if(state.runtimeType == AuthenticationUnauthenticated){
      return null;
    }
    final result = await authenticationRepo.hasToken();
    result.fold((l) {
      // rootScaffoldKey.currentState?.showSnackBar(buildSnackBar(l.toString(),));
    }, (r) async {
      if (r != null) {
        await sl<DioServices>().init();
        add(GetUserData());
      } else {
        final result = PrefUtils().getGuestLogin();
        if (result == true) {
          add(GuestLogin());
        } else {
          add(CheckOnBoardingEvent());
        }
        emit(AuthenticationUnauthenticated());
      }
    });
  }

  FutureOr<void> _loggedIn(
      LoggedIn event, Emitter<AuthenticationState> emit) async {
    await sl<DioServices>().init();
    // add(GetUserData());
    emit(AuthenticationAuthenticated());
  }

  // FutureOr<void> _loggedIn(LoggedIn event, Emitter<AuthenticationState> emit) async{
  //   await sl<DioServices>().init();
  //   add(GetUserData());
  //   // emit(AuthenticationAuthenticated(token: event.token,));
  // }

  FutureOr<void> _loggedOut(
      LoggedOut event, Emitter<AuthenticationState> emit) async {
    // emit(AuthenticationLoading());
    PrefUtils().setGuestLogin(false);
    final result = await authenticationRepo.deleteToken();
    result.fold((l) {
      // rootScaffoldKey.currentState?.showSnackBar(buildSnackBar(l.toString(),));
      //  emit(AuthenticationError(l.message));
    }, (r) {
      rootScaffoldKey.currentContext?.read<LoginBloc>().add(ResetBlocEvent());

      emit(AuthenticationUnauthenticated());
    });
  }

  // FutureOr<void> _confirmEmail(ConfirmEmail event, Emitter<AuthenticationState> emit) {
  //   emit(AuthenticationAuthConfirmation());
  // }

  FutureOr<void> _goBack(GoBack event, Emitter<AuthenticationState> emit) {
    rootScaffoldKey.currentContext?.read<LoginBloc>().add(ResetBlocEvent());
    emit(AuthenticationUnauthenticated());
  }

  Future<FutureOr<void>> _checkOnBoarding(
      CheckOnBoardingEvent event, Emitter<AuthenticationState> emit) async {
//check onboarding bool
    final result = PrefUtils().getOnBoarding();
    print("On Boarding $result");
    if (result == true) {
      emit(AuthenticationUnauthenticated());
    } else {
      add(GetSliderImageEvent());
      // emit();
    }
  }

  Future<FutureOr<void>> _doneOnBoarding(
      DoneOnBoardingEvent event, Emitter<AuthenticationState> emit) async {

    final result = await PrefUtils().setOnBoarding(true);

    emit(AuthenticationUnauthenticated());
  }

  FutureOr<void> _logInFlow(
      LoginFlow event, Emitter<AuthenticationState> emit) {
    LoadingHelper.stopLoading();
    emit(AuthenticationLoginFlow());
  }

  FutureOr<void> _guestLogin(
      GuestLogin event, Emitter<AuthenticationState> emit) {
    navigatorKey.currentContext?.pushNamed(Routes.authenticationScreen);

    emit(AuthenticationAsGuest());
  }

  // FutureOr<void> _navigateToRequestPrice(NavigateToRequestPrice event, Emitter<AuthenticationState> emit) {
  //   emit(AuthenticationRequestPrice());
  // }

  Future<FutureOr<void>> _getUserData(
      GetUserData event, Emitter<AuthenticationState> emit) async {
    final result = await authenticationRepo.getUserData();
    await result.fold((l) {
      LoadingHelper.stopLoading();
    }, (r) async {
      await sl<DioServices>().init();

      currentUser = r?.toUserModel();

      if(currentUser?.isChecked == null || currentUser?.isChecked != '1'){
        rootScaffoldKey.currentContext?.read<LoginBloc>().add(CodeSentEvent(
            phone: currentUser!.email.toString(), verificationId: "success"));
        emit(AuthenticationForgetPassword());
      }else if(currentUser?.isChecked == '1' && currentUser?.hasValidSubscription == false){
        emit(AuthenticationPersonalInfo());
      }else if (currentUser?.isChecked == '1' && currentUser?.age != null && currentUser?.targetWeight == null && currentUser?.hasValidSubscription == false){
        emit( const AuthenticationAuthenticated());
      }else{
        navigatorKey.currentContext?.pushReplacementNamed(Routes.authenticationScreen);
        emit(const AuthenticationAuthenticated());

      }

      LoadingHelper.stopLoading();
    });
  }
  Future<FutureOr<void>> _getUserDataFromServer(
      GetUserDataFromServer event, Emitter<AuthenticationState> emit) async {
    final result = await authenticationRepo.getUserDataFromServer();
    await result.fold((l) {
      LoadingHelper.stopLoading();
    }, (r) async {
      // await sl<DioServices>().init();

      currentUser = r.toUserModel();
      add(GetUserData());

      LoadingHelper.stopLoading();
    });
  }

  FutureOr<void> _forgetPasswordFlow(
      ForgetPasswordFlowEvent event, Emitter<AuthenticationState> emit) {
    emit(AuthenticationForgetPassword());
  }

  FutureOr<void> _register(
      RegisterEvent event, Emitter<AuthenticationState> emit) {
    emit(AuthenticationPersonalInfo());
  }

  FutureOr<void> _updatePasswordEvent(
      event, Emitter<AuthenticationState> emit) {
    emit(AuthenticationUpdatePassword());
  }

  FutureOr<void> _updateSubscription(UpdateSubscriptionEvent event, Emitter<AuthenticationState> emit) {
    // final user = currentUser?.copyWith(hasValidSubscription: true);
    // authenticationRepo.saveUser(CacheUser.fromUserModel(user!));
    add(GetUserData());
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // print(stackTrace);
  }

  FutureOr<void> _goToChooseLanguage(
      GoToChooseLanguage event, Emitter<AuthenticationState> emit) {
    emit(AuthenticationGoToChooseLang());
  }

  FutureOr<void> _doneChooseLanguageEvent(
      DoneChooseLanguageEvent event, Emitter<AuthenticationState> emit) {
    PrefUtils().setLang(event.language);
    emit(AuthenticationChooseLang());
  }

  Future<void> _goToChooseCity(GoToChooseCity event, Emitter<AuthenticationState> emit) async {
      emit(AuthenticationChooseCountry());
  }




  Future<void> _getSliderImage(GetSliderImageEvent event, Emitter<AuthenticationState> emit) async {
    final result =await authenticationRepo.getSliderImages();
    result.fold((l) {
      // rootScaffoldKey.currentState?.showSnackBar(buildSnackBar(l.toString(),));
    }, (r) {
      emit(AuthenticationOnBoarding(sliderImages: r));
    });
  }

  FutureOr<void> _goToOnBoardingTwo(GoToOnBoardingTwo event, Emitter<AuthenticationState> emit) {
    emit(AuthenticationOnBoardingTwo());

  }
}
