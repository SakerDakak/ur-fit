import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/modules/auth/data/models/register_model.dart';
import 'package:urfit/modules/auth/data/repo/authentication_repo.dart';
import 'package:urfit/modules/auth/persentation/cubit/auth_states.dart';
import 'package:urfit/service_locator.dart';

class AuthCubit extends Cubit<AuthStates> {
  final _repo = sl<AuthenticationRepo>();
  final int cityId;
  final int countryId;
  AuthCubit(this.countryId, this.cityId) : super(AuthInitialState());
  Future<void> login(String email, String password, bool remember) async {
    emit(LoginLoadingState());
    // AppConst.latestFunctionCalled = login;
    final user = await _repo.login(email: email, password: password);
    user.fold((l) async {
      emit(LoginErrorState());
    }, (response) async {
      final user = response.user;
      await Future.wait([
        if (remember) FlutterKeychain.put(key: 'email', value: email),
        if (remember) FlutterKeychain.put(key: 'password', value: password),
        TokenService.setToken(response.token)
      ]);
      if (user.isChecked == null || user.isChecked != '1') {
        emit(UnCheckedUser());
      } else if (user.isChecked == '1' && user.hasValidSubscription == false) {
        emit(CheckedUncompletedInfoUser());
      } else if (user.isChecked == '1' &&
          user.age != null &&
          user.targetWeight != null &&
          user.hasValidSubscription == true) {
        emit(CheckedWithInfoUser());
      } else {
        emit(CheckedWithInfoUser());
      }
    });
  }

  register(RegisterModel req) async {}
}
