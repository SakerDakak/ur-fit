import 'package:flutter/cupertino.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../assets/const.dart';

      class LoadingHelper {
  static bool? get visible {
    BuildContext? context = rootScaffoldKey.currentContext;
    return context?.loaderOverlay.visible;
  }

  static startLoading() {
    BuildContext? context = rootScaffoldKey.currentContext;
    print("start loading $context" );

    if (context != null && !context.loaderOverlay.visible) {
      context.loaderOverlay.show();
    }
  }

  static stopLoading() {
    BuildContext? context = rootScaffoldKey.currentContext;
    if (context != null && context.loaderOverlay.visible) {
      context.loaderOverlay.hide();
    }
  }
}
