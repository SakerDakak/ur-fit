import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

import 'colors.dart';

abstract class AppTheme {
  static ThemeData darkTheme(bool isFemale) => ThemeData(
        primaryColorLight: isFemale ? Co.primaryColorFemale : Co.primaryColor,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor:isFemale ? Co.primaryColorFemale : Co.primaryColor, // This sets the primary color
          primary:
          isFemale ? Co.primaryColorFemale : Co.primaryColor, // Explicitly setting the primary color
          onPrimary: Colors.white, // Color for text and icons on primary color
          secondary: Colors.blueAccent, // Secondary color
          onSecondary:
              Colors.white, // Color for text and icons on secondary color
        ),
        primaryColor: isFemale ? Co.primaryColorFemale : Co.primaryColor,
        canvasColor: Colors.white,
        indicatorColor: Colors.white,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: isFemale ? Co.primaryColorFemale : Co.primaryColor,
          selectionColor: isFemale ? Co.primaryColorFemale.withOpacity(0.4) : Co.primaryColor.withOpacity(0.4),
          selectionHandleColor: isFemale ? Co.primaryColorFemale : Co.primaryColor,
        ),
        scaffoldBackgroundColor: Co.backGround,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Co.cardColor,
        ),

        // text theme
        textTheme: GoogleFonts.cairoTextTheme().apply(
          decorationColor: Co.whiteColor,
          displayColor: Co.fontColor,
          bodyColor: Co.fontColor,
        ),

        // dialog theme
        dialogTheme: DialogThemeData(
          backgroundColor: Co.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
          ),
        ),

        // app bar theme
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: GoogleFonts.cairo(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          backgroundColor: Co.backGround,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
      );

  static ThemeData lightTheme() => ThemeData();
}
