import 'package:flutter/material.dart';
import 'package:rawaquh/features/auth/presentation/screens/register_screen.dart';

import '../../../../core/funcations/app_functions.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/values_manager.dart';

class SignInRegisterRow extends StatelessWidget {
  const SignInRegisterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () =>
          AppFunctions.navigateTo(context,  RegisterScreen()),
          child: Text(
            'إنشاء حساب جديد',
            style: getMediumStyle(
              fontSize: AppSize.s14,
              color: AppColors.primaryColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        Text(
          'جديد على رواقة؟',
          style: getMediumStyle(
            fontSize: AppSize.s14,
            color: AppColors.textDark,
          ),
        ),
      ],
    );
  }
}