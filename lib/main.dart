import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/utils/bloc_observer.dart';
import 'package:urfit/ur_fit_app.dart';

import 'core/presentation/utils/hive_services.dart';
import 'di.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();
  await HiveServices().init();
  // await HiveServices().register();
  // await HiveServices().openBoxes();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    DevicePreview(
        enabled: false, // Disable in release mode
        builder: (context) => const UrFitApp()),
  );
}
