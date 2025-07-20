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
  late NotificationSettings _userPermissions;

  FCMService._() {
    LocalNotificationServices.inst;
    requestPermession();
  }

  bool get hasPermission =>
      _userPermissions.authorizationStatus == AuthorizationStatus.authorized ||
      _userPermissions.authorizationStatus == AuthorizationStatus.provisional;

  void requestPermession() async {
    _fcm.setAutoInitEnabled(true);
    _userPermissions = await _fcm.requestPermission(
      alert: true,
      sound: true,
      badge: true,
      criticalAlert: true,
      provisional: false,
      announcement: true,
      carPlay: false,
    );
    debugPrint(" FCM ::: userPermissions.authorizationStatus: ${_userPermissions.authorizationStatus}");
    // only for ios as andoid won't show pop up notification whilst foreground
    await _fcm.setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification in ios
      badge: true,
      sound: true,
    );
    await getDeviceToken();
  }

  // String? fcmToken;
  Future<String> getDeviceToken() async {
    String? fcmToken;
    try {
      _fcm.getAPNSToken();
      fcmToken = await _fcm.getToken();
      debugPrint(' ########### FCM is ::::: $fcmToken');
    } catch (e) {
      debugPrint("FCM ERROR: ${e.toString()}");
    }
    return fcmToken ?? '@';
  }

  Future<void> _printOrder(Map<String, dynamic> msg) async {
    // if (msg['order_id'] != null) {
    //   if (Session().user != null) {
    //     final id = int.tryParse(msg['order_id'].toString());
    //     if (id == null) return;
    //     try {
    //       di<OrdersBus>().printingNewOrder(id);
    //     } catch (e) {
    //       debugPrint('Error in fcmForegroundHandler: $e');
    //     }
    //   }
    // }
  }

  void fcmForegroundHandler() async {
    FirebaseMessaging.onMessage.listen((message) async {
      debugPrint('fcmForegroundHandler');
      debugPrint(message.data.toString());
      print(message.toMap());
      if (!Platform.isIOS) {
      await LocalNotificationServices.inst.showNotification(message);
      _printOrder(message.data);
      }
    });
  }

  Future fcmOnBackground() async {
    print("start fcmOnBackground");
    // Returns a [Stream] that is called when a user presses a notification message displayed via FCM
    FirebaseMessaging.onBackgroundMessage((message) async {
      debugPrint('fcmOnBackground');
      debugPrint(message.data.toString());
      print(message.toMap());
      await _printOrder(message.data);
    });
  }

  @pragma("vm:entry-point")
  void fcmBackgroundOpenedAppHandler() {
    // Returns a [Stream] that is called when a user presses a notification message displayed via FCM
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      await _printOrder(message.data);
    });
  }

  Future<void> fcmGetInitMessage() async {
    debugPrint('fcmGetInitMessage');
    fcmForegroundHandler();
    fcmOnBackground();
    fcmBackgroundOpenedAppHandler();
  }
}
