import 'package:flutter/material.dart';

class AppConst {
  static const kHorizontalPadding = 16.0;
  static const kBottomPadding = 100.0;
  static const kBorderRadius = 8.0;
  static final defaultHpadding = const EdgeInsetsGeometry.symmetric(horizontal: kHorizontalPadding);
  static final defaultVpadding = const EdgeInsetsGeometry.only(bottom: kBottomPadding);
  static final defaultPadding = const EdgeInsetsGeometry.all(kHorizontalPadding);

  static GlobalKey<ScaffoldMessengerState> rootScaffoldKey = GlobalKey<ScaffoldMessengerState>();
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
// bool isBottomSheetOpened = false;
//
// GlobalKey<ExpandableFabState> fapKey =
// GlobalKey<ExpandableFabState>();
  static bool isBottomSheetOpened = false;

  static Function? latestFunctionCalled;
}

enum PageState { initial, loading, loaded, error }

enum SearchType { PAGE, EXPLANATION, REGULATION, CONTENT }
