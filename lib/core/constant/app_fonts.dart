import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// Application font constants
class AppFonts {
  // Font Family
  static String fontFamily = GoogleFonts.inter.toString();

  // Font Weights
  static const int lightWeight = 300;
  static const int regularWeight = 500;
  static const int mediumWeight = 600;
  static const int boldWeight = 700;

  // Font Sizes (using flutter_screenutil)
  static double get displayLarge => 32.sp;
  static double get displayMedium => 28.sp;
  static double get displaySmall => 24.sp;
  static double get headlineLarge => 22.sp;
  static double get headlineMedium => 20.sp;
  static double get headlineSmall => 18.sp;
  static double get titleLarge => 16.sp;
  static double get titleMedium => 14.sp;
  static double get titleSmall => 12.sp;
  static double get bodyLarge => 16.sp;
  static double get bodyMedium => 14.sp;
  static double get bodySmall => 12.sp;
  static double get labelLarge => 14.sp;
  static double get labelMedium => 12.sp;
  static double get labelSmall => 10.sp;

  // Custom font sizes for specific use cases
  static double get logoSize => 24.sp;
  static double get buttonTextSize => 16.sp;
  static double get inputTextSize => 14.sp;
  static double get captionSize => 10.sp;
  static double get overlineSize => 8.sp;

  // Line Heights
  static double get tightLineHeight => 1.2;
  static double get normalLineHeight => 1.4;
  static double get relaxedLineHeight => 1.6;
  static double get looseLineHeight => 1.8;

  // Letter Spacing
  static double get tightLetterSpacing => -0.5;
  static double get normalLetterSpacing => 0.0;
  static double get wideLetterSpacing => 0.5;
  static double get widerLetterSpacing => 1.0;

  // Predefined text styles for common use cases
  static TextStyle displayLargeStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: displayLarge,
    fontWeight: FontWeight.w700,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle displayMediumStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: displayMedium,
    fontWeight: FontWeight.w700,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle displaySmallStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: displaySmall,
    fontWeight: FontWeight.w700,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle headlineLargeStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: headlineLarge,
    fontWeight: FontWeight.w600,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle headlineMediumStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: headlineMedium,
    fontWeight: FontWeight.w600,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle headlineSmallStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: headlineSmall,
    fontWeight: FontWeight.w600,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle titleLargeStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: titleLarge,
    fontWeight: FontWeight.w600,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle titleMediumStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: titleMedium,
    fontWeight: FontWeight.w500,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle titleSmallStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: titleSmall,
    fontWeight: FontWeight.w500,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle bodyLargeStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: bodyLarge,
    fontWeight: FontWeight.w500,
    height: relaxedLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle bodyMediumStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: bodyMedium,
    fontWeight: FontWeight.w500,
    height: relaxedLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle bodySmallStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: bodySmall,
    fontWeight: FontWeight.w500,
    height: relaxedLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle labelLargeStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: labelLarge,
    fontWeight: FontWeight.w500,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle labelMediumStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: labelMedium,
    fontWeight: FontWeight.w500,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle labelSmallStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: labelSmall,
    fontWeight: FontWeight.w500,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  // Custom styles for specific components
  static TextStyle buttonTextStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: buttonTextSize,
    fontWeight: FontWeight.w600,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle inputTextStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: inputTextSize,
    fontWeight: FontWeight.w500,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle logoTextStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: logoSize,
    fontWeight: FontWeight.w700,
    height: tightLineHeight,
    letterSpacing: tightLetterSpacing,
    color: color,
  );

  static TextStyle captionStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: captionSize,
    fontWeight: FontWeight.w500,
    height: normalLineHeight,
    letterSpacing: normalLetterSpacing,
    color: color,
  );

  static TextStyle overlineStyle({Color? color}) => TextStyle(
    fontFamily: fontFamily,
    fontSize: overlineSize,
    fontWeight: FontWeight.w500,
    height: normalLineHeight,
    letterSpacing: wideLetterSpacing,
    color: color,
  );

  // Helper method to create custom text style
  static TextStyle customStyle({
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
    Color? color,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize ?? bodyMedium,
      fontWeight: fontWeight ?? FontWeight.w500,
      height: height ?? normalLineHeight,
      letterSpacing: letterSpacing ?? normalLetterSpacing,
      color: color,
      decoration: decoration,
    );
  }
}
