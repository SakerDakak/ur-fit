
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


GlobalKey<ScaffoldMessengerState> rootScaffoldKey =
    GlobalKey<ScaffoldMessengerState>();
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
// bool isBottomSheetOpened = false;
//
// GlobalKey<ExpandableFabState> fapKey =
// GlobalKey<ExpandableFabState>();
bool isBottomSheetOpened = false;


Function? latestFunctionCalled ;
enum PageState { initial, loading, loaded, error }
enum SearchType{PAGE,EXPLANATION,REGULATION,CONTENT}






