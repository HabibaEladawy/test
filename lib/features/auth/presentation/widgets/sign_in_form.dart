import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rawaquh/core/constant/custom_textformfield.dart';
import 'package:rawaquh/core/utils/app_colors.dart';
import 'package:rawaquh/features/auth/presentation/screens/forget_password.dart';
import '../../../../core/funcations/app_functions.dart';
import '../../../../core/helpers/specing.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/utils/values_manager.dart';
import 'forget_password_button.dart';


class SignInForm extends StatelessWidget {
   SignInForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.emailKey,
    required this.passwordKey,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormFieldState<String>> emailKey;
  final GlobalKey<FormFieldState<String>> passwordKey;
  final TextEditingController forgetEmailController = TextEditingController();
  final GlobalKey<FormFieldState<String>> forgetEmailKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        verticalSpace(36),
        Text(
          'رقم الجوال أو البريد الإلكتروني',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: AppColors.textDark2,
          ),
          textDirection: TextDirection.rtl,
        ),
        verticalSpace(8),
        CustomTextformfeild(
          keyboardType: TextInputType.emailAddress,
          controller: emailController,
          validator: Validators.emailValidator,
          formFieldKey: emailKey,
          hintText: 'ادخل الرقم او البريد الألكتروني',
          textDirection: TextDirection.rtl,
          hintStyle: getRegularStyle(
            fontSize: AppSize.s12,
            color: AppColors.hintColor,
          ),
        ),
        verticalSpace(24),
        Text(
          'كلمة المرور',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: AppColors.textDark,
          ),
          textDirection: TextDirection.rtl,
        ),
        verticalSpace(8),
        CustomTextformfeild(
          keyboardType: TextInputType.text,
          controller: passwordController,
          validator: Validators.passwordValidator,
          formFieldKey: passwordKey,
          hintText: 'ادخل كلمة المرور',
          isPassword: true,
          textDirection: TextDirection.rtl,
          hintStyle: getRegularStyle(
            fontSize: AppSize.s12,
            color:AppColors.lightGrey,
          ),
          passwordIconColor: AppColors.lightGrey,

          passwordIconSize: 22.sp,
        ),

        verticalSpace(8),

        ForgetPasswordButton(
          emailController: forgetEmailController,
          emailKey: forgetEmailKey,
        ),
      ],
    );
  }
}