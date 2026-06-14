import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/custom_button.dart';
import '../../../../core/utils/values_manager.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: () {},
      data: 'تسجيل دخول',
      width: 327.w,
      height: 48.h,
      borderRadius: AppSize.s32,
    );
  }
}