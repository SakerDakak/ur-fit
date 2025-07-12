// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:urfit/core/data/services/firebase/local_notification_services.dart';

// import 'package:provider/provider.dart';

class FCMService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  static final _inst = FCMService._();
  factory FCMService() => _inst;

  FCMService._() {
    LocalNotificationServices.inst;
    _init();
  }
  _init() async {
    _fcm.setAutoInitEnabled(true);
    await _fcm.requestPermission(
      alert: true,
      sound: true,
      badge: true,
      criticalAlert: true,
      provisional: false,
      announcement: true,
      carPlay: false,
    );
    // only for ios as andoid won't show pop up notification whilst foreground
    await _fcm.setForegroundNotificationPresentationOptions(
        alert: true, // Required to display a heads up notification in ios
        badge: true,
        sound: true);
  }

  // String? fcmToken;
  Future<String> getDeviceToken() async {
    String? fcmToken;
    try {
      fcmToken = await _fcm.getToken();
      debugPrint(' ########### FCM is ::::: $fcmToken');
    } catch (e) {
      debugPrint("FCM ERROR: ${e.toString()}");
    }
    return fcmToken ?? '';
  }

  fcmForegroundHandler() async {
    FirebaseMessaging.onMessage.listen((message) async {
      debugPrint('fcmForegroundHandler');
      debugPrint(message.data.toString());
      if (!Platform.isIOS) {
        await LocalNotificationServices.inst.showNotification(message);
      }
    });
  }

  fcmBackgroundOpenedAppHandler() {
    debugPrint('fcmBackgroundOpenedAppHandler');
    // Returns a [Stream] that is called when a user presses a notification message displayed via FCM
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      debugPrint(message.data.toString());
      if (message.data.isNotEmpty) {
        if (message.data['order_uuid'] != null) {
          // final context = AppConsts.navigatorKey.currentContext!;
          // if (Session.inst.user != null && message.data['order_uuid'] is String) {
          //   context.push(OrderDetailsScreen.routeName(message.data['order_uuid']));
          // } else {
          //   context.push(LoginScreen.routeName);
          // }
        }
      }
    });
  }

  fcmOnBackground() {
    debugPrint('fcmBackgroundOpenedAppHandler');
    // Returns a [Stream] that is called when a user presses a notification message displayed via FCM
    FirebaseMessaging.onBackgroundMessage((message) async {
      debugPrint(message.data.toString());
      if (message.data.isNotEmpty) {
        // if (message.data['order_uuid'] != null) {
        //   final context = AppConsts.navigatorKey.currentContext!;
        //   if (Session.inst.user != null && message.data['order_uuid'] is String) {
        //     context.push(OrderDetailsScreen.routeName(message.data['order_uuid']));
        //   } else {
        //     context.push(LoginScreen.routeName);
        //   }
        // }
      }
    });
  }

  @pragma('vm:entry-point')
  static Future<bool> fcmTerminatedStateApp() async {
    RemoteMessage? message = await FCMService()._fcm.getInitialMessage();
    if (message?.data.isNotEmpty == true) {
      debugPrint(message?.data.toString());
      // if (message?.data['order_uuid'] != null) {
      //   final context = AppConsts.navigatorKey.currentContext!;
      //   if (Session.inst.user != null && message?.data['order_uuid'] is String) {
      //     context.push(OrderDetailsScreen.routeName(message?.data['order_uuid']));
      //   } else {
      //     context.push(LoginScreen.routeName);
      //   }
      //   return true;
      // }
    }
    return false;
  }

  Future<void> fcmGetInitMessage() async {
    debugPrint('fcmGetInitMessage');
    fcmForegroundHandler();
    fcmOnBackground();
    fcmBackgroundOpenedAppHandler();
  }
}
