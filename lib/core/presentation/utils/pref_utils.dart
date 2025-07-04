//ignore: unused_import
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class StorageKeys {
  static const String themeData = 'themeData';
  static const String firstVisit = 'firstVisit';
  static const String lang = 'lang';
}

class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> setFirstVisit() {
    return _sharedPreferences!.setBool(StorageKeys.firstVisit, false);
  }

  bool isFirstVisit() {
    try {
      return _sharedPreferences?.getBool(StorageKeys.firstVisit) ?? true;
    } catch (e) {
      return true;
    }
  }

  Future<void> setLang(String value) {
    return _sharedPreferences!.setString(StorageKeys.lang, value);
  }

  String? getLang() {
    try {
      return _sharedPreferences!.getString(StorageKeys.lang);
    } catch (e) {
      return null;
    }
  }
}
