import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:urfit/core/data/services/storage_keys.dart';
import 'package:urfit/core/data/services/firebase/fcm_service.dart';
import 'package:urfit/di.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  // final EasyLocalization localization ;
  AppCubit()
      : super(AppState(
            currentLocal:
                di<SharedPreferences>().getString(StorageKeys.lang) ?? 'ar',
            notificationsEnabled: di<SharedPreferences>()
                    .getBool(StorageKeys.notificationsEnabled) ??
                true));
  // late Box themeBox;
  late String lang;

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

  /// تبديل حالة الإشعارات
  Future<void> toggleNotifications(bool enabled) async {
    // تحديث الحالة فوراً لتحسين الاستجابة
    emit(state.copyWith(notificationsEnabled: enabled));

    // حفظ الحالة محلياً
    await di<SharedPreferences>()
        .setBool(StorageKeys.notificationsEnabled, enabled);

    // تشغيل العمليات في الخلفية بدون انتظار
    if (enabled) {
      _enableNotificationsAsync();
    } else {
      _disableNotificationsAsync();
    }
  }

  /// تفعيل الإشعارات بشكل غير متزامن
  void _enableNotificationsAsync() {
    // تشغيل العملية في الخلفية بدون انتظار
    Future.microtask(() async {
      try {
        // إعادة تفعيل FCM token
        final fcmService = FCMService();
        await fcmService.getDeviceToken();

        print('الإشعارات تم تفعيلها بنجاح');
      } catch (e) {
        print('خطأ في تفعيل الإشعارات: $e');
        // في حالة الخطأ، يمكن إعادة الحالة إلى false
        // emit(state.copyWith(notificationsEnabled: false));
      }
    });
  }

  /// إيقاف الإشعارات بشكل غير متزامن
  void _disableNotificationsAsync() {
    // تشغيل العملية في الخلفية بدون انتظار
    Future.microtask(() async {
      try {
        // حذف FCM token
        final fcmService = FCMService();
        await fcmService.deleteToken();

        print('الإشعارات تم إيقافها بنجاح');
      } catch (e) {
        print('خطأ في إيقاف الإشعارات: $e');
        // في حالة الخطأ، يمكن إعادة الحالة إلى true
        // emit(state.copyWith(notificationsEnabled: true));
      }
    });
  }

  /// تحديث بيانات المستخدم في جميع الصفحات
  void refreshUserData() {
    emit(state.copyWith(
      userDataUpdated: state.userDataUpdated + 1,
    ));
  }
}
