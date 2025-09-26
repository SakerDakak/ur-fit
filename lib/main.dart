import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/utils/bloc_observer.dart';
import 'package:urfit/core/data/services/midnight_data_cleanup_service.dart';
import 'package:urfit/ur_fit_app.dart';

import 'di.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await HiveServices().init();
  // await HiveServices().register();
  // await HiveServices().openBoxes();
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };
    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  } catch (e, s) {
    print('Error initializing Firebase: $e');
    print('Stack trace: $s');
  }
  await init();
  Bloc.observer = MyBlocObserver();

  // تهيئة خدمة مسح البيانات عند منتصف الليل
  MidnightDataCleanupService.initialize();

  runApp(
    const UrFitApp(),
  );
}
