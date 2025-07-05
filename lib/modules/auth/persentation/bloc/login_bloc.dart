import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/utils/loading_helper.dart';
import '../../data/models/register_model.dart';
import '../../data/models/user/cached_user.dart';
import '../../data/repo/authentication_repo.dart';
import 'authentication_bloc/authentication_bloc.dart';

part 'login_state.dart';

class LoginBloc extends Cubit<LoginState> {
  final AuthenticationBloc authenticationBloc;

  final AuthenticationRepo authenticationRepo;

  LoginBloc(this.authenticationRepo, this.authenticationBloc) : super(const LoginState());

  sendCode(String phone, String verificationId) async {
    print('test send code');

    emit(state.copyWith(verificationId: verificationId, phone: phone, errMessage: ''));
  }

  Future<FutureOr<void>> login(String email, String password, bool remember) async {
    LoadingHelper.startLoading();
    AppConst.latestFunctionCalled = (event, emit) {
      login(email, password, remember);
    };

    final user = await authenticationRepo.login(email: email, password: password, remember: remember);
    user.fold((l) async {
      print("l.message : ${l.message}");
      emit(state.copyWith(pageState: PageState.error, errMessage: l.message, otpErrMessage: ''));
      LoadingHelper.stopLoading();
    }, (u) async {
      authenticationBloc.getUserData();
    });
  }

  verifyOtpCode(String otp) async {
    LoadingHelper.startLoading();
    emit(state.copyWith(pageState: PageState.loading));

    final result = await authenticationRepo.verifyOtp(
      email: state.email.isEmpty ? authenticationBloc.currentUser?.email ?? "" : state.email,
      code: otp,
    );
    result.fold((l) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(pageState: PageState.error, errMessage: l.message, otpErrMessage: ''));
    }, (r) async {
      print("login");
      LoadingHelper.stopLoading();
      emit(state.copyWith(
        pageState: PageState.loaded,
        errMessage: '',
      ));

      if (authenticationBloc.state is AuthenticationForgetPassword) {
        authenticationBloc.updatePasswordEvent();
      } else {
        authenticationBloc.getUserData();
      }
    });
  }

  //

  //

  FutureOr<void> onChangePhone(String? phone) {
    emit(state.copyWith(phone: phone));
  }

  FutureOr<void> onChangeEmail(String? email) {
    emit(state.copyWith(email: email));
  }

  FutureOr<void> onChangePassword(String? password) {
    emit(state.copyWith(password: password));
  }

  //

  FutureOr<void> onChangeOtp(String? otp) {
    emit(state.copyWith(otp: otp));
  }

  Future<FutureOr<void>> guestLogin() async {
    authenticationBloc.guestLogin();
  }

  FutureOr<void> fireError() {
    emit(state.copyWith(pageState: PageState.error));
  }

  FutureOr<void> forgetPasswordGoBack() {
    emit(state.copyWith(verificationId: ""));
  }

  FutureOr<void> resetBloc() {
    emit(state.copyWith(errMessage: '', phone: "", email: "", password: "", otp: "", verificationId: ""));
  }

  Future<void> forgetPassword() async {
    emit(state.copyWith(pageState: PageState.loading));
    AppConst.latestFunctionCalled = (event, emit) {
      forgetPassword();
    };

    final result = await authenticationRepo.forgetPassword(email: state.email);
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

  FutureOr<void> onChangeNewPassword(String? password) {
    emit(state.copyWith(newPassword: password));
  }

  FutureOr<void> onChangeNewPasswordConfirm(String? password) {
    emit(state.copyWith(confirmPassword: password));
  }

  Future<void> resetPassword() async {
    LoadingHelper.startLoading();
    AppConst.latestFunctionCalled = () {
      resetPassword();
    };

    final result = await authenticationRepo.resetPassword(
      password: state.newPassword,
      confirmPassword: state.confirmPassword,
      email: state.email,
    );
    result.fold((l) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(pageState: PageState.error, errMessage: l.message, otpErrMessage: ''));
    }, (r) async {
      LoadingHelper.stopLoading();
      emit(state.copyWith(
        pageState: PageState.loaded,
        errMessage: '',
      ));

      authenticationBloc.goBack();
    });
  }

  FutureOr<void> onChangeFirstName(String? firstName) {
    emit(state.copyWith(pageState: PageState.loading));
    print("event name : $firstName");
    emit(state.copyWith(firstName: firstName, pageState: PageState.loaded));
  }

  FutureOr<void> onChangeAccountType(String? type) {
    emit(state.copyWith(pageState: PageState.loading));
    emit(state.copyWith(accountType: type, pageState: PageState.loaded));
  }

  Future<void> GetUserTypes() async {
    LoadingHelper.startLoading();
    AppConst.latestFunctionCalled = () {
      GetUserTypes();
    };

    final result = await authenticationRepo.getUserTypes();
    result.fold((l) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(pageState: PageState.error, errMessage: l.message, otpErrMessage: ''));
    }, (r) async {
      LoadingHelper.stopLoading();
      emit(state.copyWith(pageState: PageState.loaded, userTypes: r, errMessage: ""));
    });
  }

  Future<void> registerNow() async {
    LoadingHelper.startLoading();
    AppConst.latestFunctionCalled = () {
      registerNow();
    };

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
      emit(state.copyWith(pageState: PageState.error, errMessage: l.message, otpErrMessage: ''));
    }, (r) async {
      LoadingHelper.stopLoading();

      sendCode(r!.email.toString(), r.otpCode.toString());
      authenticationBloc.logInFlow();
    });
  }

  FutureOr<void> registerGoBack() {
    emit(state.copyWith(verificationId: "", errMessage: ""));
  }

  Future<void> registerResendCode(String type) async {
    final result = await authenticationRepo.registerResendOtp(
        email: state.email.isEmpty ? authenticationBloc.currentUser?.email ?? "" : state.email);
    result.fold((l) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(pageState: PageState.error, errMessage: l.message, otpErrMessage: ''));
    }, (r) async {
      print("r : $r");
      LoadingHelper.stopLoading();
    });
  }

  Future<void> registerUpdatePhone() async {
    final result =
        await authenticationRepo.registerUpdatePhone(phone: state.phone, verificationId: state.verificationId);
    result.fold((l) {
      LoadingHelper.stopLoading();
      emit(state.copyWith(pageState: PageState.error, errMessage: l.message, otpErrMessage: ''));
    }, (r) async {
      emit(state.copyWith(pageState: PageState.loaded, verificationId: r['2fa'], errMessage: ''));
      AppConst.rootScaffoldKey.currentContext!.pop();

      registerResendCode('sms');
    });
  }

  Future<void> registerVerifyCode() async {
    print("otp : ${state.otp}");
    print("verificationId : ${state.verificationId}");
    LoadingHelper.startLoading();
    final result = await authenticationRepo.registerVerifyCode(verificationId: state.verificationId, code: state.otp);
    result.fold((l) async {
      print(l.message);
      emit(state.copyWith(pageState: PageState.error, errMessage: l.message, otpErrMessage: ''));
      LoadingHelper.stopLoading();
    }, (u) async {
      await FlutterKeychain.put(key: 'email', value: state.email);
      await FlutterKeychain.put(key: 'password', value: state.password);

      u.fold(
        (l) {
          LoadingHelper.stopLoading();
          sendCode(l['phone'], l['2fa']);
          authenticationBloc.logInFlow();
        },
        (r) {
          LoadingHelper.stopLoading();
          showCustomSuccessDialog(AppConst.navigatorKey.currentContext!, r, authenticationBloc);

          print("login");
        },
      );
    });
  }

  FutureOr<void> clearError() {
    emit(state.copyWith(errMessage: ""));
  }

  FutureOr<void> toggleTerms(bool accepted) {
    emit(state.copyWith(acceptTerms: accepted));
  }

  Future<void> googleLogin() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn(scopes: ["email", "profile"]).signIn();

    print("Google user name: ${googleUser?.displayName}");
    print("Google email: ${googleUser?.email}");
    print("Google photo url: ${googleUser?.photoUrl}");
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    try {
      final cred = await FirebaseAuth.instance.signInWithCredential(credential);

      final registerModel = RegisterModel(
        name: state.firstName,
        email: state.email,
        password: state.newPassword,
        password_confirmation: state.confirmPassword,
        country_id: state.countryId,
        city_id: state.cityId,
      );

      print("user name : ${cred.user?.displayName.toString()}");
      if (cred.credential?.accessToken != null) {
        final result = await authenticationRepo.loginWithGoogle(
            accessToken: cred.credential!.accessToken!, registerModel: registerModel);

        result.fold((l) async {
          print("l.message : ${l.message}");
          emit(state.copyWith(pageState: PageState.error, errMessage: l.message, otpErrMessage: ''));
          LoadingHelper.stopLoading();
        }, (u) async {
          authenticationBloc.getUserData();
        });
      }
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

          authenticationBloc.getUserData();
        },
        builder: (BuildContext context) {
          return PopScope(
            onPopInvokedWithResult: (bool, dynamic) {
              context.canPop() ? context.pop() : null;

              LoadingHelper.startLoading();

              authenticationBloc.getUserData();
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 70,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'تم انشاء الحساب بنجاح.',
                    style: CustomTextStyle.regular_14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'فترة التجربة 24 ساعة',
                    style: CustomTextStyle.regular_14.copyWith(color: AppColors.greyColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          context.canPop() ? context.pop() : null;

                          LoadingHelper.startLoading();

                          authenticationBloc.getUserData();
                        },
                        style:
                            ElevatedButton.styleFrom(backgroundColor: Colors.blue, padding: const EdgeInsets.all(15)),
                        child: Text('اكتشف المنصة', style: CustomTextStyle.semiBold_14.copyWith(color: Colors.white)),
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
