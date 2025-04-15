import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../style/fonts.dart';

class ToastHelper {
  static void showErrorToast(
      BuildContext context, String message, String? icon) {
    CherryToast.error(
      enableIconAnimation: false,
      inheritThemeColors: true,
      description: Text(
        message,
        style: CustomTextStyle.regular_12, // Your custom text style
      ),
      displayCloseButton: false,
      iconWidget: SvgPicture.asset(""),
      animationDuration: const Duration(milliseconds: 1000),
      autoDismiss: true,
    ).show(context);
  }
}
