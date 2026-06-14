import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/values_manager.dart';
import 'custom_svg_image.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final String icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 55.w,
        height: 43.h,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFE6E5E5)),

          borderRadius: BorderRadius.circular(AppSize.s8.r),
        ),
        child: CustomSvgImage(path: icon, height: 28.h, width: 24.w),
      ),
    );
  }
}
