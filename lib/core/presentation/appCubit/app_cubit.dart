import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:urfit/core/presentation/utils/pref_utils.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  // final EasyLocalization localization ;
  AppCubit() : super(const AppState());
  late Box themeBox;

  bool? notificationEnabled;

  init() async {
    // if(await Permission.notification.isGranted){
    //   notificationEnabled = true;
    // }else{
    //   notificationEnabled = false;
    // }
    // if(notificationEnabled == null) {
    //   final result = await Permission.notification.request();
    //
    //   switch (result) {
    //     case PermissionStatus.provisional:
    //     case PermissionStatus.granted:
    //     case PermissionStatus.limited:
    //       notificationEnabled = true;
    //     case PermissionStatus.restricted:
    //     case PermissionStatus.permanentlyDenied:
    //     case PermissionStatus.denied:
    //       notificationEnabled = false;
    //   }
    // }
    // themeBox = await Hive.openBox("ThemeMode");
    await getLocal();
    await getThemeFromHive();
    // emit(state.copyWith(currentLocal: localization.currentLocale?.languageCode)) ;
// emit(state.copyWith(isDark: isDark));
  }

  getLocal() {
    final lang = PrefUtils().getLang();
    emit(state.copyWith(currentLocal: lang));
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
    await PrefUtils().setLang(lang);
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
