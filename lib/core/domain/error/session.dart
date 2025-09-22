import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/di.dart';
import 'package:urfit/modules/auth/data/models/user/user_model.dart';
import 'package:urfit/modules/auth/data/repo/auth_repo.dart';
import 'package:urfit/modules/auth/persentation/views/auth_screen.dart';

class Session {
  static final _inst = Session._();
  Session._();
  factory Session() => _inst;
  UserModel? _currentUser;
  UserModel? get currentUser => _currentUser;

  int? get countryId => di<SharedPreferences>().getInt(StorageKeys.countryId);
  int? get cityId => di<SharedPreferences>().getInt(StorageKeys.cityId);

  set setCountryId(int? id) => id == null
      ? di<SharedPreferences>().remove(StorageKeys.countryId)
      : di<SharedPreferences>().setInt(StorageKeys.countryId, id);
  set setCityId(int? id) => id == null
      ? di<SharedPreferences>().remove(StorageKeys.cityId)
      : di<SharedPreferences>().setInt(StorageKeys.cityId, id);

  set setCurrentUser(UserModel? user) => _currentUser = user;

  Future<FutureOr<void>> getUserDataFromServer() async {
    final result = await di<AuthRepo>().getUserDataFromServer();
    await result.fold((l) {
      // خطأ في تحميل بيانات المستخدم
    }, (loadedUser) async {
      setCurrentUser = loadedUser;
    });
  }

  Future logout() async {
    await di<AuthRepo>().signOut();
    await GoogleSignIn(scopes: ["email", "profile"]).signOut();
    setCurrentUser = null;
    TokenService.deleteToken();
    AppConst.navigatorKey.currentContext?.go(AuthScreen.route);
  }

  clearUserData() async {
    _currentUser = null;
    TokenService.deleteToken();
    setCountryId = null;
    setCityId = null;
  }

  // حذف بيانات المستخدم مع الاحتفاظ ببيانات العنوان
  clearUserDataKeepLocation() async {
    _currentUser = null;
    TokenService.deleteToken();
    // لا نحذف countryId و cityId للاحتفاظ ببيانات العنوان
  }
}
