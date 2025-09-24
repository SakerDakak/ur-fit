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

  // StreamController لإشعار الـ widgets بتغييرات بيانات المستخدم
  final StreamController<UserModel?> _userController =
      StreamController<UserModel?>.broadcast();
  Stream<UserModel?> get userStream => _userController.stream;

  int? get countryId => di<SharedPreferences>().getInt(StorageKeys.countryId);
  int? get cityId => di<SharedPreferences>().getInt(StorageKeys.cityId);

  set setCountryId(int? id) => id == null
      ? di<SharedPreferences>().remove(StorageKeys.countryId)
      : di<SharedPreferences>().setInt(StorageKeys.countryId, id);
  set setCityId(int? id) => id == null
      ? di<SharedPreferences>().remove(StorageKeys.cityId)
      : di<SharedPreferences>().setInt(StorageKeys.cityId, id);

  set setCurrentUser(UserModel? user) {
    _currentUser = user;
    _userController.add(user); // إشعار جميع المستمعين بالتغيير
  }

  Future<FutureOr<void>> getUserDataFromServer() async {
    final result = await di<AuthRepo>().getUserDataFromServer();
    await result.fold((l) {
      // خطأ في تحميل بيانات المستخدم
    }, (loadedUser) async {
      setCurrentUser = loadedUser;
    });
  }

  // دالة محدثة لتحميل بيانات المستخدم مع إشعار التطبيق بالتغييرات
  Future<FutureOr<void>> getUserDataFromServerWithNotify() async {
    final result = await di<AuthRepo>().getUserDataFromServer();
    await result.fold((l) {
      // خطأ في تحميل بيانات المستخدم
    }, (loadedUser) async {
      setCurrentUser = loadedUser;

      // إشعار التطبيق بتحديث بيانات المستخدم
      if (AppConst.navigatorKey.currentContext != null) {
        // يمكن إضافة منطق إضافي هنا لإشعار الواجهات بالتحديث
        print(
            "تم تحديث بيانات المستخدم: hasValidSubscription=${loadedUser.hasValidSubscription}, haveExercisePlan=${loadedUser.haveExercisePlan}, haveMealPlan=${loadedUser.haveMealPlan}");
      }
    });
  }

  // دالة للتحقق من حالة الاشتراك والخطط مع إعادة المحاولة
  Future<bool> checkSubscriptionAndPlansStatus() async {
    int attempts = 0;
    const maxAttempts = 5;

    while (attempts < maxAttempts) {
      await getUserDataFromServer();
      final user = currentUser;

      if (user?.hasValidSubscription == true) {
        print(
            "المحاولة ${attempts + 1}: hasValidSubscription=${user?.hasValidSubscription}, haveExercisePlan=${user?.haveExercisePlan}, haveMealPlan=${user?.haveMealPlan}");

        // إذا كانت الخطط موجودة، انتهاء
        if ((user?.haveExercisePlan == true && user?.haveMealPlan == true) ||
            (user?.haveExercisePlan == true &&
                user?.packageId != null &&
                (user?.packageId == 1 ||
                    user?.packageId == 2 ||
                    user?.packageId == 3)) ||
            (user?.haveMealPlan == true &&
                user?.packageId != null &&
                (user?.packageId == 4 ||
                    user?.packageId == 5 ||
                    user?.packageId == 6))) {
          return true;
        }
      }

      attempts++;
      if (attempts < maxAttempts) {
        await Future.delayed(const Duration(seconds: 2));
      }
    }

    return false;
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
    _userController.add(null); // إشعار بإزالة بيانات المستخدم
    TokenService.deleteToken();
    setCountryId = null;
    setCityId = null;
  }

  // حذف بيانات المستخدم مع الاحتفاظ ببيانات العنوان
  clearUserDataKeepLocation() async {
    _currentUser = null;
    _userController.add(null); // إشعار بإزالة بيانات المستخدم
    TokenService.deleteToken();
    // لا نحذف countryId و cityId للاحتفاظ ببيانات العنوان
  }

  // إغلاق الـ StreamController عند إغلاق التطبيق
  void dispose() {
    _userController.close();
  }
}
