import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/values_manager.dart';

class OtpPinput extends StatelessWidget {
  const OtpPinput({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  final TextEditingController controller;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: controller,
      length: 4,
      mainAxisAlignment: MainAxisAlignment.center,
      onChanged: onChanged,
      defaultPinTheme: PinTheme(
        width: 42.w,
        height: 42.w,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFE7E8E8)),
          borderRadius: BorderRadius.circular(100.r),
        ),
        textStyle: getMediumStyle(
          fontSize: AppSize.s20,
          color: AppColors.primaryColor,
        ),
      ),
      focusedPinTheme: PinTheme(
        width: 42.w,
        height: 42.w,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(100.r),
        ),
        textStyle: getMediumStyle(
          fontSize: AppSize.s20,
          color: AppColors.primaryColor,
        ),
      ),
      submittedPinTheme: PinTheme(
        width: 42.w,
        height: 42.w,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(100.r),
        ),
        textStyle: getMediumStyle(
          fontSize: AppSize.s20,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}