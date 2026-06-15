import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rawaquh/core/constant/custom_header.dart';
import 'package:rawaquh/features/auth/presentation/screens/otp_screen.dart';
import 'package:rawaquh/features/auth/presentation/widgets/auth_container.dart';
import '../../../../core/constant/custom_button.dart';
import '../../../../core/constant/custom_textformfield.dart';
import '../../../../core/funcations/app_functions.dart';
import '../../../../core/helpers/specing.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/utils/values_manager.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
    required this.emailController,
    required this.emailKey,
  });

  final TextEditingController emailController;
  final GlobalKey<FormFieldState<String>> emailKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthContainer(
        header: CustomHeader(
          title: 'نسيت كلمه المرور',
          subTitle:
          'اكتب رقم الجوال أو البريد الإلكتروني المرتبط بحسابك وبنرسل لك\n رمز التحقق',
        ),
        child: Column(
          children: [
            verticalSpace(54),
            CustomTextformfeild(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              validator: Validators.emailValidator,
              formFieldKey: emailKey,
              hintText: 'رقم الجوال أو البريد الإلكتروني',
              textDirection: TextDirection.rtl,
              hintStyle: getRegularStyle(
                fontSize: AppSize.s12,
                color: const Color(0xFF5C5757),
              ),
            ),
            verticalSpace(16),
        CustomButton(
          onTap: () {
            AppFunctions.navigateTo(context,  OtpScreen());
          },
          data: 'ارسال رمز التحقق',
          width: 327.w,
          height: 48.h,
          borderRadius: AppSize.s32,
        ),

        ],
        ),
      ),
    );
  }
}