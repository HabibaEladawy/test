import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/custom_button.dart';
import '../../../../core/utils/values_manager.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: () {},
      data: 'تأكيد وإنشاء الحساب',
      width: 327.w,
      height: 48.h,
      borderRadius: AppSize.s32,
    );
  }
}