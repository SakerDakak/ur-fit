import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
// import 'package:panara_dialogs/panara_dialogs.dart';

class Alerts {
  static exitSnack(BuildContext context, {String? msg}) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        showCloseIcon: true,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.63, right: 8, left: 8),
        dismissDirection: DismissDirection.up,
        duration: const Duration(seconds: 2),
        backgroundColor: Co.secondaryColor.withAlpha(175),
        content: Text(
          msg ?? L10n.tr().pressDoubleBackToExit,
          style: TStyle.bold_14,
        ),
      ),
    );
  }

  static void showToast(
    String message, {
    Toast length = Toast.LENGTH_SHORT,
    ToastGravity toastGravity = ToastGravity.BOTTOM,
    bool error = true,
    bool isInfo = false,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: length,
      gravity: toastGravity,
      timeInSecForIosWeb: 3,
      fontSize: 16,
      backgroundColor: isInfo
          ? Co.secondaryColor.withAlpha(125)
          : error
              ? Co.redColor
              : Co.blackColor,
      textColor: Co.fontColor,
    );
  }

  // static void locationDisabled() {
  //   final context = AppConsts.navigatorKey.currentContext!;
  //   showDialog(
  //     context: context,
  //     builder: (context) => Dialogs.confirmDialog(
  //       title: L10n.tr().attention,
  //       message: L10n.tr().pleaseEnableLocationService,
  //     ),
  //   );
  // }
}
