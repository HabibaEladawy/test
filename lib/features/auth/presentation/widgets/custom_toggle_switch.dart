import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/values_manager.dart';

class CustomToggleSwitch extends StatefulWidget {
  const CustomToggleSwitch({super.key});

  @override
  State<CustomToggleSwitch> createState() => _CustomToggleSwitchState();
}

class _CustomToggleSwitchState extends State<CustomToggleSwitch> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildButton(index: 0, label: 'مستخدم'),
          const SizedBox(width: 10),
          _buildButton(index: 1, label: 'مقدم خدمة'),
        ],
      ),
    );
  }

  Widget _buildButton({required int index, required String label}) {
    final bool isActive = _activeIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _activeIndex = index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
        decoration: BoxDecoration(
          color: isActive ? AppColors.primaryColor : const Color(0xFFF7F7F7),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isActive ? AppColors.primaryColor : const Color(0xFFF7F7F7),
            width: 1,
          ),
        ),
        child: Text(
          label,
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: isActive ? AppColors.white : AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}