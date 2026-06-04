import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_fonts.dart';

TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color? color,
  double? height,
  TextDecoration? decoration,
) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    height: height,
    decoration: decoration,
    fontFamily: AppFonts.fontFamily,
  );
}

TextStyle getSmallStyle({
  required double fontSize,
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return _getTextStyle(fontSize, FontWeight.w200, color, height, decoration);
}

TextStyle getLightStyle({
  required double fontSize,
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return _getTextStyle(fontSize, FontWeight.w400, color, height, decoration);
}

TextStyle getRegularStyle({
  required double fontSize,
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return _getTextStyle(fontSize, FontWeight.w500, color, height, decoration);
}

TextStyle getMediumStyle({
  required double fontSize,
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return _getTextStyle(fontSize, FontWeight.w600, color, height, decoration);
}

TextStyle getHighStyle({
  required double fontSize,
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return _getTextStyle(fontSize, FontWeight.w700, color, height, decoration);
}

TextStyle getBoldStyle({
  required double fontSize,
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return _getTextStyle(fontSize, FontWeight.bold, color, height, decoration);
}

// Named Text Styles
TextStyle titleLargeStyle({
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return getMediumStyle(
    fontSize: 18.sp,
    color: color,
    height: height,
    decoration: decoration,
  );
}

TextStyle inputTextStyle({
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return getRegularStyle(
    fontSize: 16.sp,
    color: color,
    height: height,
    decoration: decoration,
  );
}

TextStyle bodyMediumStyle({
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return getRegularStyle(
    fontSize: 14.sp,
    color: color,
    height: height,
    decoration: decoration,
  );
}

TextStyle labelSmallStyle({
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return getLightStyle(
    fontSize: 12.sp,
    color: color,
    height: height,
    decoration: decoration,
  );
}

TextStyle buttonTextStyle({
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return getMediumStyle(
    fontSize: 16.sp,
    color: color,
    height: height,
    decoration: decoration,
  );
}

// Text Direction Helpers
TextDirection getTextDirectionFromText(String text) {
  final arabicRegex = RegExp(r'[\u0600-\u06FF]');
  return arabicRegex.hasMatch(text) ? TextDirection.rtl : TextDirection.ltr;
}

({TextDirection direction, TextAlign align}) getTextDirectionAndAlignFromText(
  String text,
) {
  final isArabic = RegExp(r'[\u0600-\u06FF]').hasMatch(text);
  return (
    direction: isArabic ? TextDirection.rtl : TextDirection.ltr,
    align: isArabic ? TextAlign.right : TextAlign.left,
  );
}
