//ignore: unused_import
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/core/data/services/storage_keys.dart';

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
}
