import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rawaquh/features/auth/presentation/widgets/phone_field.dart';

import '../../../../core/constant/custom_textformfield.dart';
import '../../../../core/funcations/app_functions.dart';
import '../../../../core/helpers/specing.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/utils/values_manager.dart';
import '../screens/country_selection_screen.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
    required this.nameController,
    required this.phoneController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.nameKey,
    required this.phoneKey,
    required this.emailKey,
    required this.passwordKey,
    required this.confirmPasswordKey,
  });

  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  final GlobalKey<FormFieldState> nameKey;
  final GlobalKey<FormFieldState> phoneKey;
  final GlobalKey<FormFieldState> emailKey;
  final GlobalKey<FormFieldState> passwordKey;
  final GlobalKey<FormFieldState> confirmPasswordKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'الاسم',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: const Color(0xFF2D2C2C),
          ),
        ),
        verticalSpace(8),
        CustomTextformfeild(
          keyboardType: TextInputType.name,
          controller: nameController,
          validator: Validators.displayNamevalidator,
          formFieldKey: nameKey,
          hintText: 'ادخل الاسم',
          textDirection: TextDirection.rtl,
          hintStyle: getRegularStyle(
            fontSize: AppSize.s12,
            color: Color(0xFF535252),
          ),
        ),

        verticalSpace(24),

        Text(
          'رقم الجوال أو البريد الإلكتروني',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: const Color(0xFF2D2C2C),

            ///name
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
            color: Color(0xFF535252),
          ),
        ),
        verticalSpace(24),

        Text(
          'رقم الجوال',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: const Color(0xFF2D2C2C),
          ),
        ),
        verticalSpace(8),
        PhoneField(
          controller: phoneController,
          validator: Validators.phoneValidator,
          formFieldKey: phoneKey,
          prefixTextStyle: getRegularStyle(
            fontSize: AppSize.s14,
            color: Color(0xFFB2B2B2),
          ),
          onPrefixTap: () =>
              AppFunctions.navigateTo(context, CountrySelectionScreen()),
        ),

        verticalSpace(24),

        Text(
          'كلمة المرور',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: const Color(0xFF2D2C2C),
          ),
        ),
        verticalSpace(8),
        CustomTextformfeild(
          keyboardType: TextInputType.visiblePassword,
          controller: passwordController,
          validator: Validators.passwordValidator,
          formFieldKey: passwordKey,
          hintText: 'ادخل كلمة المرور',
          isPassword: true,
          textDirection: TextDirection.rtl,
          hintStyle: getRegularStyle(
            fontSize: AppSize.s12,
            color: Color(0xFF535252),
          ),
          passwordIconColor: Color(0xFFB1B0B0),
          passwordIconSize: 22.sp,
        ),

        verticalSpace(24),

        Text(
          'تأكيد كلمة المرور',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: const Color(0xFF2D2C2C),
          ),
        ),
        verticalSpace(8),
        CustomTextformfeild(
          keyboardType: TextInputType.visiblePassword,
          controller: confirmPasswordController,
          formFieldKey: confirmPasswordKey,
          hintStyle: getRegularStyle(
            fontSize: AppSize.s12,
            color: Color(0xFF535252),
          ),
          passwordIconColor: Color(0xFFB1B0B0),
          passwordIconSize: 22.sp,
          hintText: 'اعد كتابة كلمة المرور',
          isPassword: true,
          textDirection: TextDirection.rtl,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'يرجى تأكيد كلمة المرور';
            }

            if (value != passwordController.text) {
              return 'كلمة المرور غير متطابقة';
            }

            return null;
          },
        ),
      ],
    );
  }
}
