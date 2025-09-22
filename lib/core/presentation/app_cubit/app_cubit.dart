import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/di.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  // final EasyLocalization localization ;
  AppCubit()
      : super(AppState(
            currentLocal:
                di<SharedPreferences>().getString(StorageKeys.lang) ?? 'ar'));
  // late Box themeBox;
  late String lang;
  bool? notificationEnabled;

  init() async {
    // تطبيق ثيم الذكر الافتراضي عند بدء التطبيق أولاً
    setDefaultTheme();
    getLocal();
    await getThemeFromHive();
  }

  void getLocal() {
    lang = di<SharedPreferences>().getString(StorageKeys.lang) ?? 'ar';
  }

  ThemeMode get currentTheme => state.isDark == null
      ? ThemeMode.system
      : state.isDark!
          ? ThemeMode.dark
          : ThemeMode.light;

  bool get isDark => currentTheme == ThemeMode.dark ? true : false;

  String? get local => state.currentLocal;

  Future<void> toggleTheme(bool isDark) async {
    await storeThemeToHive(isDark);
    emit(state.copyWith(isDark: isDark));
  }

  changeLang(String lang) async {
    print("change Lang $lang");
    // await EasyLocalization.of(AppConst.rootScaffoldKey.currentContext!)?.setLocale(Locale(lang));
    await di<SharedPreferences>().setString(StorageKeys.lang, lang);
    this.lang = lang;
    emit(state.copyWith(currentLocal: lang));
  }

  storeThemeToHive(bool isDark) async {
    // print("store");
    di<SharedPreferences>().setBool(StorageKeys.isDarkTheme, isDark);
  }

  setFemaleTheme() {
    print("setFemaleTheme");
    emit(state.copyWith(isFemale: true));
  }

  setMaleTheme() {
    print("setMaleTheme");
    emit(state.copyWith(isFemale: false));
  }

  // دالة جديدة لتعيين الثيم الافتراضي (أزرق) عند عدم وجود معلومات جنس
  setDefaultTheme() {
    print("setDefaultTheme");
    emit(state.copyWith(isFemale: false)); // أزرق افتراضي
  }

  getThemeFromHive() async {
    emit(state.copyWith(
        isDark:
            di<SharedPreferences>().getBool(StorageKeys.isDarkTheme) ?? false));
  }

  // notificationTrigger(bool enable) async {
  //   if(enable){
  //     // FirebaseMessaging.instance.subscribeToTopic(topic);
  //     // FirebaseMessaging.instance.subscribeToTopic(topic);
  //     // FirebaseMessaging.instance.subscribeToTopic(topic);
  //     // final controller = sl<AuthenticationCubit>();
  //
  //     sl<AuthenticationCubit>().updateUserData();
  //     notificationEnabled = true;
  //     emit(state.copyWith(notification: true));
  //   }else{
  //     // FirebaseMessaging.instance.unsubscribeFromTopic(topic);
  //     // FirebaseMessaging.instance.unsubscribeFromTopic(topic);
  //     // FirebaseMessaging.instance.unsubscribeFromTopic(topic);
  //     notificationEnabled = false;
  //
  //     emit(state.copyWith(notification: false));
  //
  //   }
  // }
}
