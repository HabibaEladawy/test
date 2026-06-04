import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../constant/app_fonts.dart';
import 'app_colors.dart';

/// Custom Toast Widget for the entire application
class CustomToast {
  /// Show success toast message
  static void showSuccess(
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: duration.inSeconds,
      backgroundColor: AppColors.successColor,
      textColor: Colors.white,
      fontSize: AppFonts.bodyMedium,
    );
  }

  /// Show error toast message
  static void showError(
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: duration.inSeconds,
      backgroundColor: AppColors.errorColor,
      textColor: Colors.white,
      fontSize: AppFonts.bodyMedium,
    );
  }

  /// Show info toast message
  static void showInfo(
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: duration.inSeconds,
      backgroundColor: AppColors.infoColor,
      textColor: Colors.white,
      fontSize: AppFonts.bodyMedium,
    );
  }

  /// Show warning toast message
  static void showWarning(
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: duration.inSeconds,
      backgroundColor: AppColors.warningColor,
      textColor: Colors.black87,
      fontSize: AppFonts.bodyMedium,
    );
  }

  /// Show custom toast message
  static void showCustom(
    String message, {
    Color? backgroundColor,
    Color? textColor,
    Duration duration = const Duration(seconds: 3),
    ToastGravity gravity = ToastGravity.TOP,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity,
      timeInSecForIosWeb: duration.inSeconds,
      backgroundColor: backgroundColor ?? AppColors.primaryColor,
      textColor: textColor ?? Colors.white,
      fontSize: AppFonts.bodyMedium,
    );
  }
}
