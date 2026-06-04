import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/app_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  // Using the new color palette from AppColors
  static const Color primaryColor = AppColors.primaryColor;
  static const Color secondaryColor = AppColors.secondaryColor;
  static const Color accentColor = AppColors.secondaryColor;
  static const Color backgroundColor = AppColors.white;
  static const Color white = AppColors.white;
  static const Color errorColor = AppColors.errorColor;
  static const Color successColor = AppColors.successColor;
  static const Color warningColor = AppColors.warningColor;
  static const Color infoColor = AppColors.infoColor;
  static const Color textPrimaryColor = AppColors.textPrimaryColor;
  static const Color textSecondaryColor = AppColors.textSecondaryColor;
  static const Color borderColor = AppColors.borderColor;
  static const Color whiteColor = AppColors.borderColor;

  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: AppFonts.fontFamily,
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: white,
        error: errorColor,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: textPrimaryColor,
        onError: Colors.white,
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppFonts.headlineMediumStyle(
          color: Colors.white,
        ).copyWith(fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(color: Colors.white, size: 24),
      ),

      // Card Theme
      cardTheme: CardThemeData(
        color: white,
        elevation: 2,
        shadowColor: AppColors.shadowColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        margin: EdgeInsets.all(8.w),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 2,
          shadowColor: AppColors.primaryShadowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          textStyle: AppFonts.buttonTextStyle(),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          textStyle: AppFonts.bodyMediumStyle(),
        ),
      ),

      // Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: BorderSide(color: primaryColor, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          textStyle: AppFonts.buttonTextStyle(),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: errorColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: errorColor, width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        hintStyle: AppFonts.inputTextStyle(color: textSecondaryColor),
        labelStyle: AppFonts.inputTextStyle(color: textPrimaryColor),
      ),

      // Text Theme
      textTheme: TextTheme(
        displayLarge: AppFonts.displayLargeStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.bold),
        displayMedium: AppFonts.displayMediumStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.bold),
        displaySmall: AppFonts.displaySmallStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.bold),
        headlineLarge: AppFonts.headlineLargeStyle(color: textPrimaryColor),
        headlineMedium: AppFonts.headlineMediumStyle(color: textPrimaryColor),
        headlineSmall: AppFonts.headlineSmallStyle(color: textPrimaryColor),
        titleLarge: AppFonts.titleLargeStyle(color: textPrimaryColor),
        titleMedium: AppFonts.titleMediumStyle(color: textPrimaryColor),
        titleSmall: AppFonts.titleSmallStyle(color: textPrimaryColor),
        bodyLarge: AppFonts.bodyLargeStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.normal),
        bodyMedium: AppFonts.bodyMediumStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.normal),
        bodySmall: AppFonts.bodySmallStyle(
          color: textSecondaryColor,
        ).copyWith(fontWeight: FontWeight.normal),
        labelLarge: AppFonts.labelLargeStyle(color: textPrimaryColor),
        labelMedium: AppFonts.labelMediumStyle(color: textPrimaryColor),
        labelSmall: AppFonts.labelSmallStyle(color: textSecondaryColor),
      ),

      // Icon Theme
      iconTheme: IconThemeData(color: textPrimaryColor, size: 24.w),

      // Progress Indicator Theme
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: borderColor,
        circularTrackColor: borderColor,
      ),

      // Divider Theme
      dividerTheme: DividerThemeData(
        color: borderColor,
        thickness: 1,
        space: 1,
      ),

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: white,
        selectedItemColor: primaryColor,
        unselectedItemColor: textSecondaryColor,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedLabelStyle: AppFonts.titleSmallStyle().copyWith(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: AppFonts.titleSmallStyle().copyWith(
          fontWeight: FontWeight.normal,
        ),
      ),

      // Floating Action Button Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),

      // Chip Theme
      chipTheme: ChipThemeData(
        backgroundColor: borderColor,
        selectedColor: primaryColor,
        disabledColor: borderColor,
        labelStyle: AppFonts.titleSmallStyle(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      ),

      // List Tile Theme
      listTileTheme: ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        titleTextStyle: AppFonts.bodyLargeStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.w500),
        subtitleTextStyle: AppFonts.bodyMediumStyle(
          color: textSecondaryColor,
        ).copyWith(fontWeight: FontWeight.normal),
        iconColor: textPrimaryColor,
        tileColor: white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
    );
  }

  // Dark Theme - Using same colors as light theme for consistency
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: AppFonts.fontFamily,
      brightness: Brightness.light, // Force light brightness
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: white,
        error: errorColor,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: textPrimaryColor,
        onError: Colors.white,
      ),

      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppFonts.headlineMediumStyle(
          color: Colors.white,
        ).copyWith(fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(color: Colors.white, size: 24),
      ),

      // Card Theme
      cardTheme: CardThemeData(
        color: white,
        elevation: 2,
        shadowColor: AppColors.shadowColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        margin: EdgeInsets.all(8.w),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 2,
          shadowColor: AppColors.primaryShadowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          textStyle: AppFonts.buttonTextStyle(),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          textStyle: AppFonts.bodyMediumStyle(),
        ),
      ),

      // Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: BorderSide(color: primaryColor, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          textStyle: AppFonts.buttonTextStyle(),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: errorColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: errorColor, width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        hintStyle: AppFonts.inputTextStyle(color: textSecondaryColor),
        labelStyle: AppFonts.inputTextStyle(color: textPrimaryColor),
      ),

      // Text Theme
      textTheme: TextTheme(
        displayLarge: AppFonts.displayLargeStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.bold),
        displayMedium: AppFonts.displayMediumStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.bold),
        displaySmall: AppFonts.displaySmallStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.bold),
        headlineLarge: AppFonts.headlineLargeStyle(color: textPrimaryColor),
        headlineMedium: AppFonts.headlineMediumStyle(color: textPrimaryColor),
        headlineSmall: AppFonts.headlineSmallStyle(color: textPrimaryColor),
        titleLarge: AppFonts.titleLargeStyle(color: textPrimaryColor),
        titleMedium: AppFonts.titleMediumStyle(color: textPrimaryColor),
        titleSmall: AppFonts.titleSmallStyle(color: textPrimaryColor),
        bodyLarge: AppFonts.bodyLargeStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.normal),
        bodyMedium: AppFonts.bodyMediumStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.normal),
        bodySmall: AppFonts.bodySmallStyle(
          color: textSecondaryColor,
        ).copyWith(fontWeight: FontWeight.normal),
        labelLarge: AppFonts.labelLargeStyle(color: textPrimaryColor),
        labelMedium: AppFonts.labelMediumStyle(color: textPrimaryColor),
        labelSmall: AppFonts.labelSmallStyle(color: textSecondaryColor),
      ),

      // Icon Theme
      iconTheme: IconThemeData(color: textPrimaryColor, size: 24.w),

      // Progress Indicator Theme
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: primaryColor,
        linearTrackColor: borderColor,
        circularTrackColor: borderColor,
      ),

      // Divider Theme
      dividerTheme: DividerThemeData(
        color: borderColor,
        thickness: 1,
        space: 1,
      ),

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: white,
        selectedItemColor: primaryColor,
        unselectedItemColor: textSecondaryColor,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedLabelStyle: AppFonts.titleSmallStyle().copyWith(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: AppFonts.titleSmallStyle().copyWith(
          fontWeight: FontWeight.normal,
        ),
      ),

      // Floating Action Button Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),

      // Chip Theme
      chipTheme: ChipThemeData(
        backgroundColor: borderColor,
        selectedColor: primaryColor,
        disabledColor: borderColor,
        labelStyle: AppFonts.titleSmallStyle(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      ),

      // List Tile Theme
      listTileTheme: ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        titleTextStyle: AppFonts.bodyLargeStyle(
          color: textPrimaryColor,
        ).copyWith(fontWeight: FontWeight.w500),
        subtitleTextStyle: AppFonts.bodyMediumStyle(
          color: textSecondaryColor,
        ).copyWith(fontWeight: FontWeight.normal),
        iconColor: textPrimaryColor,
        tileColor: white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
    );
  }
}
