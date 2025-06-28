import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

// import 'package:recaptcha_enterprise_flutter/recaptcha_action.dart';
// import 'package:recaptcha_enterprise_flutter/recaptcha_enterprise.dart';

import '../../../../core/const.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/fonts.dart';
import '../../../../core/utils/pref_utils.dart';
import '../../../core/utils/loading_helper.dart';
import '../data/models/register_model.dart';
import '../data/models/user/cached_user.dart';
import '../data/models/user/user_model.dart';
import '../repo/authentication_repo.dart';
import 'authentication_bloc/authentication_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

/// A bloc that manages the state of a Login according to the event that is dispatched to it.

// enum Provider {Google,FaceBook,Apple}
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationBloc authenticationBloc;

  final BaseAuthenticationRepo authenticationRepo;

  LoginBloc(this.authenticationRepo, this.authenticationBloc)
      : super(const LoginState()) {
    // on<LoginInitialEvent>(_onInitialize);
    on<OnChangePhoneEvent>(_onChangePhone);
    on<OnChangeFirstNameEvent>(_onChangeFirstName);
    on<OnChangeAccountTypeEvent>(_onChangeAccountType);

    on<OnChangeOtpEvent>(_onChangeOtp);
    on<OnChangeEmailEvent>(_onChangeEmail);
    on<OnChangePasswordEvent>(_onChangePassword);
    on<OnChangeNewPasswordEvent>(_onChangeNewPassword);
    on<OnChangeNewPasswordConfirmEvent>(_onChangeNewPasswordConfirm);
    on<ResetPasswordEvent>(_resetPassword);

    on<Login>(_login);
    // on<RecaptchaInit>(_recaptchaInit);
    // on<GetRecaptchaToken>(_getRecaptchaToken);

    // on<SendCodeEvent>();
    on<CodeSentEvent>(_sendCode);
    on<ForgetPasswordEvent>(_forgetPassword);

    on<VerifyOtpCodeEvent>(_verifyOtpCode);
    on<ResetBlocEvent>(_resetBloc);
    on<ClearErrorEvent>(_clearError);
    // on<SaveUserDataEvent>(_saveUser);
    // on<GetTokenEvent>(_getToken);

    on<GuestLoginEvent>(_guestLogin);
    on<LoginErrorEvent>(_FireError);
    on<ToggleRemember>(_toggleRemember);
    on<ToggleTerms>(_toggleTerms);
    on<ForgetPasswordGoBack>(_forgetPasswordGoBack);

    on<RegisterGoBack>(_registerGoBack);
    on<GetUserTypes>(_GetUserTypes);
    on<RegisterNowEvent>(_registerNow);
    on<RegisterResendCode>(_registerResendCode);
    on<RegisterUpdatePhone>(_registerUpdatePhone);
    on<RegisterVerifyCode>(_registerVerifyCode);
    on<SetCountryEvent>(_setCountry);
    on<SetCityEvent>(_setCity);
    on<GoogleLoginEvent>(_googleLogin);
  }

  // _onInitialize(LoginInitialEvent event, Emitter<LoginState> emit) async {
  //   emit(state.copyWith(verificationId: ""));
  // }

  Future<FutureOr<void>> _login(Login event, Emitter<LoginState> emit) async {
    // emit(AuthenticationLoading());
    // emit(LoginSuccess());
    LoadingHelper.startLoading();
    latestFunctionCalled = (event, emit) {
      _login(event, emit);
    };

    final user = await authenticationRepo.login(
        email: state.email, password: state.password,remember: state.remember);
    user.fold((l) async {
      print("l.message : ${l.message}");
      emit(state.copyWith(
          pageState: PageState.error,
          errMessage: l.message,
          otpErrMessage: ''));
      // emit(LoginFailure(error: l.message));
      // scaffoldMessengerKey.currentState?.showSnackBar(buildSnackBar(l.toString(),));
      // await authenticationRepo.deleteToken();
      // add(AppStarted());
      LoadingHelper.stopLoading();
    }, (u) async {




            authenticationBloc.add(GetUserData());


    });
  }

  showSubscriptionDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('اشتراك غير مفعل'),
          content: const Text(
              'حسابك غير مشترك. يرجى الاشتراك لمتابعة استخدام التطبيق.'),
          actions: <Widget>[
            TextButton(
              child: const Text('خروج'),
              onPressed: () {
                context.pop();
                // authenticationBloc.add(LoggedOut());
              },
            ),
          ],
        );
      },
    );
  }

  _sendCode(CodeSentEvent event, Emitter<LoginState> emit) async {
    // String email = state.email;
    print('test send code');

    // emit(state.copyWith(pageState: PageState.loading,,));
    // final result = await authenticationRepo.sendCode(email: state.email);
    // result.fold((l) {
    //   // scaffoldMessengerKey.currentState?.showSnackBar(buildSnackBar(l.toString(),));
    //   print("Failureeeeee");
    //   emit(state.copyWith(pageState: PageState.error));
    // }, (r) {
    //   // emit(state.copyWith(codeSent: true));
    //   print("Succeeeeeessss");
    //   // add(VerifyOtpCodeEvent(phone: , code: code))
    //   // authenticationBloc.add(ConfirmEmail());
    // });
    emit(state.copyWith(
        verificationId: event.verificationId,
        phone: event.phone,
        errMessage: ''));
  }

  _verifyOtpCode(VerifyOtpCodeEvent event, Emitter<LoginState> emit) async {
    LoadingHelper.startLoading();
    emit(state.copyWith(pageState: PageState.loading));

      final result = await authenticationRepo.verifyOtp(
        email: state.email.isEmpty ? authenticationBloc.currentUser?.email ?? "" : state.email,
        code: state.otp,
      );
      result.fold((l) {
        LoadingHelper.stopLoading();
        emit(state.copyWith(
            pageState: PageState.error,
            errMessage: l.message,
            otpErrMessage: ''));

        // emit(LoginFailure(error: l.message));

        // scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(l.message)));
      }, (r) async {
        print("login");
        LoadingHelper.stopLoading();
        emit(state.copyWith(
          pageState: PageState.loaded,
          errMessage: '',
        ));

        if(authenticationBloc.state is AuthenticationForgetPassword) {
          authenticationBloc.add(UpdatePasswordEvent());
        }else {
          authenticationBloc.add(GetUserData());
        }

      });
    // authenticationBloc.add(UpdatePasswordEvent());
  }

// _changePassword(VerifyOtpCodeEvent event, Emitter<LoginState> emit) async {
//     emit(state.copyWith(pageState: PageState.loading));
//     // final String phone = "${state.countryCode}${state.phone}";
//     final result = await authenticationRepo.verifyOtp(email: state.email, code: state.otp);
//     result.fold((l) {
//       emit(state.copyWith(pageState: PageState.error));

//       // scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(l.message)));
//     }, (r) async {
//       emit(state.copyWith(codeSent: false));
//       final token = await authenticationRepo.hasToken();
//       token.fold((l) {}, (r) async {
//         if(r != null){
//           await sl<DioServices>().init();
//           authenticationBloc.add(UpdatePasswordEvent());
//       }
//       });

//           // authenticationBloc.add(GetUserData());

//     });
//     authenticationBloc.add(UpdatePasswordEvent());

//     emit(state.copyWith(codeSent: false));
//   }

  // Future<FutureOr<void>> _getToken(
  //     GetTokenEvent event, Emitter<LoginState> emit) async {
  //   final result = await authenticationRepo.phoneAuthWithApi(event.phone);
  //   result.fold((l) {
  //     // scaffoldMessengerKey.currentState?.showSnackBar(buildSnackBar(l.toString(),));
  //     emit(state.copyWith(pageState: PageState.error));
  //   }, (r) {
  //     emit(state.copyWith(pageState: PageState.loaded));
  //
  //     authenticationBloc.add(LoggedIn(
  //       token: r,
  //     ));
  //     // add(A(userModel: event.userModel, token: r))  ;
  //   });
  // }

  //


  FutureOr<void> _onChangePhone(
      OnChangePhoneEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(phone: event.phone));
  }

  FutureOr<void> _onChangeEmail(
      OnChangeEmailEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _onChangePassword(
      OnChangePasswordEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  // FutureOr<void> _codeSent(CodeSentEvent event, Emitter<LoginState> emit) {
  //
  //   emit(state.copyWith(
  //       verificationId: event.verificationId, pageState: PageState.loaded));
  // }

  FutureOr<void> _onChangeOtp(
      OnChangeOtpEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(otp: event.otp));
  }

  Future<FutureOr<void>> _guestLogin(
      GuestLoginEvent event, Emitter<LoginState> emit) async {
    await PrefUtils().setGuestLogin(true);

    authenticationBloc.add(GuestLogin());
  }

  FutureOr<void> _FireError(LoginErrorEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(pageState: PageState.error));
  }

  FutureOr<void> _toggleRemember(
      ToggleRemember event, Emitter<LoginState> emit) {
    emit(state.copyWith(remember: event.remember));
  }

  FutureOr<void> _forgetPasswordGoBack(event, Emitter<LoginState> emit) {
    emit(state.copyWith(verificationId: ""));
  }

  FutureOr<void> _resetBloc(ResetBlocEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(
        errMessage: '',
        phone: "",
        email: "",
        password: "",
        otp: "",
        verificationId: ""));
  }

  Future<void> _forgetPassword(
      ForgetPasswordEvent event, Emitter<LoginState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));
    latestFunctionCalled = (event, emit) {
      _forgetPassword(event, emit);
    };

    final result = await authenticationRepo.forgetPassword(
        email: state.email);
    result.fold((l) {
      LoadingHelper.stopLoading();
    }, (r) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(
        pageState: PageState.loaded,
        verificationId: r['status'],
      ));
    });
  }



  @override
  void onError(Object error, StackTrace stackTrace) {
    LoadingHelper.stopLoading();
    print("stacktrace : $stackTrace");
    super.onError(error, stackTrace);
  }

  FutureOr<void> _onChangeNewPassword(
      OnChangeNewPasswordEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(newPassword: event.password));
  }

  FutureOr<void> _onChangeNewPasswordConfirm(
      OnChangeNewPasswordConfirmEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(confirmPassword: event.password));
  }

  Future<void> _resetPassword(
      ResetPasswordEvent event, Emitter<LoginState> emit) async {
    LoadingHelper.startLoading();
    latestFunctionCalled = (event, emit) {
      _resetPassword(event, emit);
    };

    final result = await authenticationRepo.resetPassword(
      password: state.newPassword,
      confirmPassword: state.confirmPassword,
      email: state.email,
    );
    result.fold((l) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(
          pageState: PageState.error,
          errMessage: l.message,
          otpErrMessage: ''));

      // emit(LoginFailure(error: l.message));

      // scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(l.message)));
    }, (r) async {
      LoadingHelper.stopLoading();
      emit(state.copyWith(
        pageState: PageState.loaded,
        errMessage: '',
      ));

      authenticationBloc.add(GoBack());

    });
  }

  FutureOr<void> _onChangeFirstName(
      OnChangeFirstNameEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(pageState: PageState.loading));
    print("event name : ${event.firstName}");
    emit(state.copyWith(
        firstName: event.firstName, pageState: PageState.loaded));
  }

  // FutureOr<void> _onChangeLastName(
  //     OnChangeLastNameEvent event, Emitter<LoginState> emit) {
  //   emit(state.copyWith(pageState: PageState.loading));
  //   print("event name : ${event.lastName}");
  //   emit(state.copyWith(lastName: event.lastName, pageState: PageState.loaded));
  // }

  FutureOr<void> _onChangeAccountType(
      OnChangeAccountTypeEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(pageState: PageState.loading));
    emit(state.copyWith(accountType: event.type, pageState: PageState.loaded));
  }

  Future<void> _GetUserTypes(
      GetUserTypes event, Emitter<LoginState> emit) async {
    LoadingHelper.startLoading();
    latestFunctionCalled = (event, emit) {
      _GetUserTypes(event, emit);
    };

    final result = await authenticationRepo.getUserTypes();
    result.fold((l) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(
          pageState: PageState.error,
          errMessage: l.message,
          otpErrMessage: ''));

      // emit(LoginFailure(error: l.message));

      // scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(l.message)));
    }, (r) async {
      LoadingHelper.stopLoading();
      emit(state.copyWith(
          pageState: PageState.loaded, userTypes: r, errMessage: ""));
    });
  }

  Future<void> _registerNow(
      RegisterNowEvent event, Emitter<LoginState> emit) async {
    LoadingHelper.startLoading();
    latestFunctionCalled = (event, emit) {
      _registerNow(event, emit);
    };

    // print("user name : ${state.userName}");
    final registerModel = RegisterModel(
      name: state.firstName,
      email: state.email,
      password: state.newPassword,
      password_confirmation: state.confirmPassword,
      country_id: state.countryId,
      city_id: state.cityId,
    );
    final result = await authenticationRepo.register(registerModel);
    result.fold((l) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(
          pageState: PageState.error,
          errMessage: l.message,
          otpErrMessage: ''));

      // emit(LoginFailure(error: l.message));

      // scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(l.message)));
    }, (r) async {
      LoadingHelper.stopLoading();

      // authenticationBloc.add(GetUserData());
      add(CodeSentEvent(phone: r!.email.toString(), verificationId: r.otpCode.toString()));
      authenticationBloc.add(
        LoginFlow(),
      );    });
  }

  FutureOr<void> _registerGoBack(
      RegisterGoBack event, Emitter<LoginState> emit) {
    emit(state.copyWith(verificationId: "", errMessage: ""));
  }

  Future<void> _registerResendCode(
      RegisterResendCode event, Emitter<LoginState> emit) async {
    final result = await authenticationRepo.registerResendOtp(
        email: state.email.isEmpty ? authenticationBloc.currentUser?.email ?? "" : state.email);
    result.fold((l) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(
          pageState: PageState.error,
          errMessage: l.message,
          otpErrMessage: ''));

      // emit(LoginFailure(error: l.message));

      // scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(l.message)));
    }, (r) async {
      print("r : $r");
      LoadingHelper.stopLoading();
      // emit(state.copyWith(pageState: PageState.loaded,verificationId: r['2fa'],phone: r['to'],errMessage: ''));
      // add(RegisterResendCode("sms"));
    });
  }

  Future<void> _registerUpdatePhone(
      RegisterUpdatePhone event, Emitter<LoginState> emit) async {
    final result = await authenticationRepo.registerUpdatePhone(
        phone: state.phone, verificationId: state.verificationId);
    result.fold((l) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(
          pageState: PageState.error,
          errMessage: l.message,
          otpErrMessage: ''));

      // emit(LoginFailure(error: l.message));

      // scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(l.message)));
    }, (r) async {
      emit(state.copyWith(
          pageState: PageState.loaded,
          verificationId: r['2fa'],
          errMessage: ''));
      rootScaffoldKey.currentContext!.pop();
      add(RegisterResendCode('sms'));
    });
  }

  Future<void> _registerVerifyCode(
      RegisterVerifyCode event, Emitter<LoginState> emit) async {
    print("otp : ${state.otp}");
    print("verificationId : ${state.verificationId}");
    LoadingHelper.startLoading();
    final result = await authenticationRepo.registerVerifyCode(
        verificationId: state.verificationId, code: state.otp);
    result.fold((l) async {
      print(l.message);
      emit(state.copyWith(
          pageState: PageState.error,
          errMessage: l.message,
          otpErrMessage: ''));
      // emit(LoginFailure(error: l.message));
      // scaffoldMessengerKey.currentState?.showSnackBar(buildSnackBar(l.toString(),));
      // await authenticationRepo.deleteToken();
      // add(AppStarted());
      LoadingHelper.stopLoading();
    }, (u) async {
      // emit(state.copyWith(errMessage: ''));

      await FlutterKeychain.put(key: 'email', value: state.email);
      await FlutterKeychain.put(key: 'password', value: state.password);

      u.fold(
        (l) {
          LoadingHelper.stopLoading();
          add(CodeSentEvent(
              phone: l['phone'], verificationId: l['2fa'].toString()));
          authenticationBloc.add(
            LoginFlow(),
          );
        },
        (r) {
          LoadingHelper.stopLoading();
          showCustomSuccessDialog(
              navigatorKey.currentContext!, r, authenticationBloc);

          print("login");

          // else if(u.name == null) {
          //   emit(AuthenticationUpdateUserData());
          // }else{
          //   emit(const AuthenticationAuthenticated());
          // }
        },
      );
    });
  }

  FutureOr<void> _clearError(ClearErrorEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(errMessage: ""));
  }

  FutureOr<void> _toggleTerms(ToggleTerms event, Emitter<LoginState> emit) {
    emit(state.copyWith(acceptTerms: event.accepted));
  }

  FutureOr<void> _setCountry(SetCountryEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(countryId: event.country));
  }

  FutureOr<void> _setCity(SetCityEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(cityId: event.city));

  }

  Future<void> _googleLogin(GoogleLoginEvent event, Emitter<LoginState> emit) async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn(scopes: ["email","profile"]).signIn();

    print("Google user name: ${googleUser?.displayName}");
    print("Google email: ${googleUser?.email}");
    print("Google photo url: ${googleUser?.photoUrl}");
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    try {

      final cred = await  FirebaseAuth.instance.signInWithCredential(credential);


      final registerModel = RegisterModel(
        name: state.firstName,
        email: state.email,
        password: state.newPassword,
        password_confirmation: state.confirmPassword,
        country_id: state.countryId,
        city_id: state.cityId,
        
      );

      print("user name : ${cred.user?.displayName.toString()}");
      if(cred.credential?.accessToken != null) {
       final result = await  authenticationRepo.loginWithGoogle(
         accessToken: cred.credential!.accessToken!,
         registerModel: registerModel
       );

       result.fold((l) async {
         print("l.message : ${l.message}");
         emit(state.copyWith(
             pageState: PageState.error,
             errMessage: l.message,
             otpErrMessage: ''));
         // emit(LoginFailure(error: l.message));
         // scaffoldMessengerKey.currentState?.showSnackBar(buildSnackBar(l.toString(),));
         // await authenticationRepo.deleteToken();
         // add(AppStarted());
         LoadingHelper.stopLoading();
       }, (u) async {




         authenticationBloc.add(GetUserData());


       });
      }

      // In mobile, being authenticated means being authorized...// However, on web...

    } catch (error) {
      print(error);
    }
  }
}

void showCustomSuccessDialog(
  BuildContext context,
  CacheUser? r,
  AuthenticationBloc authenticationBloc,
) {
  showModalBottomSheet(
    isDismissible: false,
    useSafeArea: true,
    useRootNavigator: true,
    context: context,
    builder: (context) {
      return BottomSheet(
        onClosing: () {
          context.canPop() ? context.pop() : null;

          LoadingHelper.startLoading();

          authenticationBloc.add(GetUserData());
        },
        builder: (BuildContext context) {
          return PopScope(
            onPopInvokedWithResult: (bool, dynamic) {
              context.canPop() ? context.pop() : null;

              LoadingHelper.startLoading();

              authenticationBloc.add(GetUserData());
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // CustomBottomSheetHeader(),
                  Icon(
                    Icons.check_circle,
                    size: 70,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 16.0),
                  // Success message text
                  Text(
                    'تم انشاء الحساب بنجاح.',
                    style: CustomTextStyle.regular_14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'فترة التجربة 24 ساعة',
                    style: CustomTextStyle.regular_14
                        .copyWith(color: AppColors.greyColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          context.canPop() ? context.pop() : null;

                          LoadingHelper.startLoading();

                          authenticationBloc.add(GetUserData());
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: const EdgeInsets.all(15)),
                        child: Text('اكتشف المنصة',
                            style: CustomTextStyle.semiBold_14
                                .copyWith(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
