import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/values_manager.dart';

class CountryListItem extends StatelessWidget {
  const CountryListItem({
    super.key,
    required this.name,
    required this.code,
    required this.flag,
    required this.isSelected,
    required this.onTap,
  });

  final String name;
  final String code;
  final String flag;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Radio(
              value: true,
              groupValue: isSelected,
              onChanged: (_) => onTap(),
              activeColor: AppColors.primaryColor,
            ),
            Row(
              children: [
                Text(
                  '$name($code)',
                  style: getRegularStyle(
                    fontSize: AppSize.s14,
                    color: Color(0xFF000000),
                  ),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(width: 8.w),
                Text(

                  flag,
                  style: TextStyle(fontSize: 24.sp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}