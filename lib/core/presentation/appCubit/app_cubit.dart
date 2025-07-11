import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/di.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  // final EasyLocalization localization ;
  AppCubit() : super(AppState(currentLocal: di<SharedPreferences>().getString(StorageKeys.lang) ?? 'ar'));
  late Box themeBox;
  late String lang;
  bool? notificationEnabled;

  init() async {
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
    final themeBox = await Hive.openBox("ThemeMode");
    themeBox.put("isDark", isDark);
  }

  setFemaleTheme() {
    print("setFemaleTheme");
    emit(state.copyWith(isFemale: true));
  }

  setMaleTheme() {
    emit(state.copyWith(isFemale: false));
  }

  getThemeFromHive() async {
    final themeBox = await Hive.openBox("ThemeMode");
    emit(state.copyWith(isDark: await themeBox.get("isDark", defaultValue: false)));
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
