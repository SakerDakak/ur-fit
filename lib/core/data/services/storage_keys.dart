import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/di.dart';

class StorageKeys {
  static String token = "token";
  static const String isDarkTheme = 'isDarkTheme';
  static const String lang = 'lang';
  static const String cityId = 'city_id';
  static const String countryId = 'country_id';
  static const String isOnboardingCompleted = 'isOnboardingCompleted';
  static const String isCitySelectionCompleted = 'isCitySelectionCompleted';
  static const String userData = 'user_data'; // مفتاح لحفظ بيانات المستخدم
}

class TokenService {
  TokenService._();
  static String? getToken() {
    final tok = di<SharedPreferences>().getString(StorageKeys.token);
    debugPrint("get Token $tok");
    return tok;
  }

  static Future<bool> setToken(String token) async {
    debugPrint("setToken $token");
    return await di<SharedPreferences>().setString(StorageKeys.token, token);
  }

  static Future<bool> deleteToken() async {
    return await di<SharedPreferences>().remove(StorageKeys.token);
  }
}

class OnboardingService {
  OnboardingService._();

  /// التحقق من إكمال شاشة التعريف
  static bool isOnboardingCompleted() {
    return di<SharedPreferences>().getBool(StorageKeys.isOnboardingCompleted) ??
        false;
  }

  /// حفظ حالة إكمال شاشة التعريف
  static Future<bool> setOnboardingCompleted() async {
    debugPrint("تم حفظ حالة إكمال شاشة التعريف");
    return await di<SharedPreferences>()
        .setBool(StorageKeys.isOnboardingCompleted, true);
  }

  /// إعادة تعيين حالة شاشة التعريف (للتطوير والاختبار)
  static Future<bool> resetOnboarding() async {
    debugPrint("تم إعادة تعيين حالة شاشة التعريف");
    return await di<SharedPreferences>()
        .remove(StorageKeys.isOnboardingCompleted);
  }
}

class CitySelectionService {
  CitySelectionService._();

  /// التحقق من إكمال اختيار المدينة
  static bool isCitySelectionCompleted() {
    return di<SharedPreferences>()
            .getBool(StorageKeys.isCitySelectionCompleted) ??
        false;
  }

  /// حفظ حالة إكمال اختيار المدينة
  static Future<bool> setCitySelectionCompleted() async {
    debugPrint("تم حفظ حالة إكمال اختيار المدينة");
    return await di<SharedPreferences>()
        .setBool(StorageKeys.isCitySelectionCompleted, true);
  }

  /// إعادة تعيين حالة اختيار المدينة (للتطوير والاختبار)
  static Future<bool> resetCitySelection() async {
    debugPrint("تم إعادة تعيين حالة اختيار المدينة");
    return await di<SharedPreferences>()
        .remove(StorageKeys.isCitySelectionCompleted);
  }
}
