
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
final List<Map<String, dynamic>> categories = [
    {'name': 'أنظمة / لوائح', 'color': Colors.green}, // Green
    {'name': 'سوابق قضائية', 'color': Colors.orange}, // Orange
    {'name': 'أوامر / تعاميم', 'color': Colors.red}, // Red
    {'name': 'كتب / مصادر ثانوية', 'color': Colors.blue}, // Blue
    {'name': 'نماذج مساندة', 'color': Colors.grey}, // Gray
];

late String base64Font ;
Future<void> convertFontBase64 () async {
    final ByteData fontData = await rootBundle.load('assets/fonts/IBM_Plex_Sans_Arabic/IBMPlexSansArabic-Regular.ttf');
     base64Font = base64Encode(fontData.buffer.asUint8List());


}


