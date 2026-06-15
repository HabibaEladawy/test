import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rawaquh/core/funcations/app_functions.dart';
import 'package:rawaquh/features/auth/presentation/screens/register_screen.dart';
import '../../../../core/constant/custom_button.dart';
import '../../../../core/helpers/specing.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/values_manager.dart';
import '../screens/sign_in_screen.dart';

class LoginButtonsSection extends StatelessWidget {
  const LoginButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s400.h,
      width: AppSize.s375.w,
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.s24.w,
        vertical: AppSize.s108.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.scaffoldBackground,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppSize.s53),
          bottom: Radius.circular(AppSize.s25),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButton(
              onTap: () {
                AppFunctions.navigateTo(context, RegisterScreen());
              },
              data: 'انشاء حساب جديد',
            ),
            verticalSpace(AppSpacing.s14),
            CustomButton(
              useGradient: false,
              color: AppColors.white,
              bordercolor: AppColors.secondaryColor,
              txtcolor: AppColors.primaryColor,
              onTap: () => AppFunctions.navigateTo(context, SignInScreen()),
              data: 'تسجيل الدخول',
            ),
            verticalSpace(AppSize.s53),
            TextButton(
              onPressed: () {},
              child: Text(
                'أو يمكنك التصفح كزائر',
                style: getMediumStyle(
                  fontSize: AppSize.s14.sp,
                  color: AppColors.secondaryColor,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
