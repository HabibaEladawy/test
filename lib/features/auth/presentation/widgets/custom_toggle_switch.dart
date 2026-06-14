import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../core/utils/app_colors.dart';

class CustomToggleSwitch extends StatelessWidget {
  const CustomToggleSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      totalSwitches: 2,
      labels: ['مستخدم', 'مقدم خدمة'],

      minWidth: 80.w,
      minHeight: 45.h,
      fontSize: 14.sp,
      activeBgColor: [AppColors.primaryColor],
      activeFgColor: Colors.white,
      inactiveBgColor: Color(0xFFF7F7F7),
      inactiveFgColor: AppColors.primaryColor,
      borderColor: [Color(0xFFF7F7F7)],
      borderWidth: 1.0,
      radiusStyle: true,
      cornerRadius: 16.0,
      onToggle: (index) {},
    );
  }
}