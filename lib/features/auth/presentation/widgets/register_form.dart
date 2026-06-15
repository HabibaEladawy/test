import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rawaquh/features/auth/presentation/widgets/phone_field.dart';
import '../../../../core/constant/custom_textformfield.dart';
import '../../../../core/funcations/app_functions.dart';
import '../../../../core/helpers/specing.dart';
import '../../../../core/utils/app_colors.dart';
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
      children: [

        CustomTextformfeild(
          labelText: 'الاسم',
          keyboardType: TextInputType.name,
          controller: nameController,
          validator: Validators.displayNamevalidator,
          formFieldKey: nameKey,
          hintText: 'ادخل الاسم',
          textDirection: TextDirection.rtl,
          hintStyle: getRegularStyle(
            fontSize: AppSize.s12,
            color: AppColors.hintColor,
          ),
        ),
        verticalSpace(24),

        CustomTextformfeild(
          labelText: 'رقم الجوال أو البريد الإلكتروني',
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
          'رقم الجوال',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: AppColors.textDark,
          ),
        ),
        verticalSpace(8),
        PhoneField(
          controller: phoneController,
          validator: Validators.phoneValidator,
          formFieldKey: phoneKey,
          prefixTextStyle: getRegularStyle(
            fontSize: AppSize.s14,
            color:AppColors.grey4,
          ),
          onPrefixTap: () =>
              AppFunctions.navigateTo(context, CountrySelectionScreen()),
        ),
        verticalSpace(24),
        Text(
          'كلمة المرور',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: AppColors.textDark,
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
            color: AppColors.hintColor,
          ),
          passwordIconColor:  AppColors.lightGrey,
          passwordIconSize: 22.sp,
        ),

        verticalSpace(24),
        Text(
          'تأكيد كلمة المرور',
          style: getRegularStyle(
            fontSize: AppSize.s14,
            color: AppColors.textDark,
          ),
        ),
        verticalSpace(8),
        CustomTextformfeild(
          keyboardType: TextInputType.visiblePassword,
          controller: confirmPasswordController,
          formFieldKey: confirmPasswordKey,
          hintStyle: getRegularStyle(
            fontSize: AppSize.s12,
            color: AppColors.hintColor,
          ),
          passwordIconColor: AppColors.lightGrey,
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
