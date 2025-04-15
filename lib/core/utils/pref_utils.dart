//ignore: unused_import
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  PrefUtils() {
    // init();
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  Future<void> setOnBoarding(bool value) {
    return _sharedPreferences!.setBool('onBoarding', value);
  }

  bool getOnBoarding() {
    try {
      return false;
      // return _sharedPreferences!.getBool('onBoarding')!;
    } catch (e) {
      return false;
    }
  }

  Future<void> setLang(String value) {
    return _sharedPreferences!.setString('lang', value);
  }

  String? getLang() {
    try {
      return _sharedPreferences!.getString('lang')!;
    } catch (e) {
      return null;
    }
  }

  Future<void> setCountry(int value) {
    return _sharedPreferences!.setInt('country', value);
  }

  int? getCountry() {
    try {
      return _sharedPreferences!.getInt('country')!;
    } catch (e) {
      return null;
    }
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }

  Future<void> setGuestLogin(bool value) {
    return _sharedPreferences!.setBool('isGuest', value);
  }

  bool getGuestLogin() {
    try {
      return _sharedPreferences!.getBool('isGuest')!;
    } catch (e) {
      return false;
    }
  }
  Future<bool> setTutorialGuideFilePlayed(bool value){
    print("asdasdasdasd");
    return _sharedPreferences!.setBool('showCaseFile', value);

  }
  bool getTutorialGuideFilePlayed() {
    try {
      return _sharedPreferences!.getBool('showCaseFile')!;
    } catch (e) {
      return false;
    }
  }

  Future<bool> setTutorialGuideImagePlayed(bool value){
    return _sharedPreferences!.setBool('showCaseImage', value);

  }
  bool getTutorialGuideImagePlayed() {
    try {
      return _sharedPreferences!.getBool('showCaseImage')!;
    } catch (e) {
      return false;
    }
  }
}
