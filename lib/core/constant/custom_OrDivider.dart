import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_styles.dart';
import '../utils/values_manager.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.s12.w),
          child: Text(
            'Or Sign In With',
            style: getMediumStyle(
              fontSize: AppSize.s14,
              color: Color(0xFF666666),
            ),
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}