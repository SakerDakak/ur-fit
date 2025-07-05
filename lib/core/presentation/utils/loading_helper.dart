import 'package:flutter/cupertino.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

class LoadingHelper {
  static bool? get visible {
    final BuildContext? context = AppConst.rootScaffoldKey.currentContext;
    return context?.loaderOverlay.visible;
  }

  static startLoading() {
    final BuildContext? context = AppConst.rootScaffoldKey.currentContext;
    print("start loading $context");

    if (context != null && !context.loaderOverlay.visible) {
      context.loaderOverlay.show();
    }
  }

  static stopLoading() {
    final BuildContext? context = AppConst.rootScaffoldKey.currentContext;
    if (context != null && context.loaderOverlay.visible) {
      context.loaderOverlay.hide();
    }
  }
}
