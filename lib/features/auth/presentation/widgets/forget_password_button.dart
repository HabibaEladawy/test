
import 'package:flutter/material.dart';

import '../../../../core/funcations/app_functions.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/values_manager.dart';
import '../screens/forget_password.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
    required this.emailController,
    required this.emailKey,
  });

  final TextEditingController emailController;
  final GlobalKey<FormFieldState<String>> emailKey;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        AppFunctions.navigateTo(
          context,
          ForgetPassword(
            emailController: emailController,
            emailKey: emailKey,
          ),
        );
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        'نسيت كلمة المرور؟',
        style: getRegularStyle(
          fontSize: AppSize.s12,
          color: AppColors.textDark,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}