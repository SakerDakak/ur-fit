import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/di.dart';

class StorageKeys {
  static String token = "token";
  static const String isDarkTheme = 'isDarkTheme';
  static const String lang = 'lang';
  static const String cityId = 'city_id';
  static const String countryId = 'country_id';

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
