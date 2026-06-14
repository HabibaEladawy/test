import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rawaquh/core/constant/custom_textformfield.dart';
import '../../../../core/helpers/specing.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/utils/values_manager.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
    required this.emailController,/// Varibale => controller
    required this.passwordController,
    required this.emailKey,
    required this.passwordKey,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormFieldState> emailKey;/// acess => field
  final GlobalKey<FormFieldState> passwordKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'رقم الجوال أو البريد الإلكتروني',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: const Color(0xFF2D2C2C),///name
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
          hintStyle: getRegularStyle(fontSize: AppSize.s12,
              color: Color(0xFF535252)),
        ),
        verticalSpace(24),
        Text(
          'كلمة المرور',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: const Color(0xFFB1B0B0),///name
          ),
          textDirection: TextDirection.ltr,
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
          hintStyle: getRegularStyle(fontSize: AppSize.s12,
              color: Color(0xFFB1B0B0)),
          passwordIconColor: Color(0xFFB1B0B0),
          passwordIconSize: 22.sp,
        ),
        verticalSpace(8),

        TextButton(
          onPressed: () {},
          child: Text(
            'نسيت كلمة المرور؟',
            style: getRegularStyle(
              fontSize: AppSize.s12,
                color: Color(0xFF2D2C2C),///name
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}