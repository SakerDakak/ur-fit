import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urfit/core/utils/constants.dart';

import 'colors.dart';

abstract class AppTheme {
  static ThemeData darkTheme(bool isFemale) => ThemeData(
        primaryColorLight: isFemale ? AppColors.primaryColorFemale : AppColors.primaryColor,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor:isFemale ? AppColors.primaryColorFemale : AppColors.primaryColor, // This sets the primary color
          primary:
          isFemale ? AppColors.primaryColorFemale : AppColors.primaryColor, // Explicitly setting the primary color
          onPrimary: Colors.white, // Color for text and icons on primary color
          secondary: Colors.blueAccent, // Secondary color
          onSecondary:
              Colors.white, // Color for text and icons on secondary color
        ),
        primaryColor: isFemale ? AppColors.primaryColorFemale : AppColors.primaryColor,
        canvasColor: Colors.white,
        indicatorColor: Colors.white,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: isFemale ? AppColors.primaryColorFemale : AppColors.primaryColor,
          selectionColor: isFemale ? AppColors.primaryColorFemale.withOpacity(0.4) : AppColors.primaryColor.withOpacity(0.4),
          selectionHandleColor: isFemale ? AppColors.primaryColorFemale : AppColors.primaryColor,
        ),
        scaffoldBackgroundColor: AppColors.backGround,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: AppColors.cardColor,
        ),

        // text theme
        textTheme: GoogleFonts.cairoTextTheme().apply(
          decorationColor: AppColors.whiteColor,
          displayColor: AppColors.fontColor,
          bodyColor: AppColors.fontColor,
        ),

        // dialog theme
        dialogTheme: DialogThemeData(
          backgroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
        ),

        // app bar theme
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: GoogleFonts.cairo(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          backgroundColor: AppColors.backGround,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
      );

  static ThemeData lightTheme() => ThemeData();
}
