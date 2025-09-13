import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/style/colors.dart';

class TStyle {
  static const regular = FontWeight.w200;

  static const light = FontWeight.w400;

  static const med = FontWeight.w500;

  static const bold = FontWeight.w600;

  static const bolder = FontWeight.w700;

  /// style size 10
  static TextStyle get medium_10 => TextStyle(
        fontSize: 10.sp,
        fontWeight: med,
        color: Co.fontColor,
      );
  static TextStyle get semiBold_10 => TextStyle(
        fontSize: 10.sp,
        fontWeight: bold,
        color: Co.fontColor,
      );

  /// style size 12
  static TextStyle get regular_12 => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: Co.fontColor,
      );
  static TextStyle get medium_12 => TextStyle(
        fontSize: 12.sp,
        fontWeight: med,
        color: Co.fontColor,
      );
  static TextStyle get semiBold_12 => TextStyle(
        fontSize: 12.sp,
        fontWeight: bold,
        color: Co.fontColor,
      );
  static TextStyle get bold_12 => TextStyle(
        fontSize: 12.sp,
        fontWeight: bolder,
        color: Co.fontColor,
      );

  /// style size 14
  static TextStyle get regular_14 => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: Co.fontColor,
      );
  static TextStyle get semiBold_14 => TextStyle(
        fontSize: 14.sp,
        fontWeight: bold,
        color: Co.fontColor,
      );
  static TextStyle get bold_14 => TextStyle(
        fontSize: 14.sp,
        fontWeight: bolder,
        color: Co.fontColor,
      );

  /// style size 16
  static TextStyle get light_16 => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w300,
        color: Co.fontColor,
      );
  static TextStyle get regular_16 => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: Co.fontColor,
      );
  static TextStyle get medium_16 => TextStyle(
        fontSize: 16.px,
        color: Co.fontColor,
        fontWeight: med,
      );
  static TextStyle get semiBold_16 => TextStyle(
        fontSize: 16.px,
        color: Co.fontColor,
        fontWeight: bold,
      );
  static TextStyle get bold_16 => TextStyle(
        fontSize: 16.px,
        color: Co.fontColor,
        fontWeight: bolder,
      );

  /// style size 20
  static TextStyle get semiBold_20 => TextStyle(
        fontSize: 20.px,
        fontWeight: bold,
        color: Co.fontColor,
      );
  static TextStyle get bold_20 => TextStyle(
        fontSize: 20.px,
        fontWeight: bolder,
        color: Co.fontColor,
      );

  /// style size 24
  static TextStyle get semiBold_24 => TextStyle(
        fontSize: 24.px,
        fontWeight: bold,
        color: Co.fontColor,
      );
  static TextStyle get bold_24 => TextStyle(
        fontSize: 24.px,
        fontWeight: bolder,
        color: Co.fontColor,
      );

  /// style size 40
  static TextStyle get semiBold_40 => TextStyle(
        fontSize: 40.px,
        fontWeight: bold,
        color: Co.fontColor,
      );
  static TextStyle get bold_40 => TextStyle(
        fontSize: 40.px,
        fontWeight: bolder,
        color: Co.fontColor,
      );

  static TextStyle primaryRegular(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: regular,
        color: Co.fontColor,
      );
  static TextStyle primarySemi(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: med,
        color: Co.fontColor,
      );
  static TextStyle primaryBold(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: bold,
        color: Co.fontColor,
      );

  static TextStyle darkRegular(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: regular,
        color: Co.blackColor,
      );
  static TextStyle darkSemi(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: med,
        color: Co.blackColor,
      );
  static TextStyle darkBold(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: bold,
        color: Co.blackColor,
      );
  static TextStyle greyRegular(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: regular,
        color: Co.darkGrey,
      );
  static TextStyle greySemi(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: med,
        color: Co.darkGrey,
      );
  static TextStyle greyBold(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: bold,
        color: Co.darkGrey,
      );

  static TextStyle errorRegular(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: regular,
        color: Co.redColor,
      );
  static TextStyle errorSemi(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: med,
        color: Co.redColor,
      );
  static TextStyle errorBold(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: bold,
        color: Co.redColor,
      );

  static TextStyle whiteRegular(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: regular,
        color: Co.whiteColor,
      );
  static TextStyle whiteSemi(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: med,
        color: Co.whiteColor,
      );
  static TextStyle whiteBold(double fontSize, {bool isTitle = false}) => TextStyle(
        // fontFamily: isTitle ? 'Lemon' : null,
        fontSize: fontSize,
        fontWeight: bold,
        color: Co.whiteColor,
      );
}
