import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:rawaquh/features/auth/presentation/screens/success_screen.dart';
import 'package:rawaquh/features/auth/presentation/widgets/otp_header.dart';
import '../../../../core/constant/custom_button.dart';
import '../../../../core/funcations/app_functions.dart';
import '../../../../core/helpers/specing.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/values_manager.dart';
import '../widgets/auth_container.dart';
import '../widgets/otp_pin_put.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthContainer(
        header: const OtpHeader(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(38),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'ادخل رمز التحقق',
                style: getMediumStyle(
                  fontSize: AppSize.s14,
                  color: AppColors.black,
                ),
              ),
            ),
            verticalSpace(24),
            OtpPinput(
              controller: otpController,
              onChanged: (_) => setState(() {}),
            ),
            verticalSpace(12),
            Text(
              'ينتهي رمز التحقق خلال 3:12',
              style: getMediumStyle(
                fontSize: AppSize.s12,
                color: AppColors.black,
              ),
            ),
            verticalSpace(24),
            CustomButton(
              onTap: otpController.text.length == 4 ? () {
                AppFunctions.navigateTo(context,  SuccessScreen());} : null,
              data: 'تأكيد الرمز',
              width: 327.w,
              height: 48.h,
              borderRadius: AppSize.s32,
              useGradient: otpController.text.length == 4,
              color: AppColors.lightGrey2,
            ),
            verticalSpace(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'إعادة إرسال',
                    style: getRegularStyle(
                      fontSize: AppSize.s12,
                      color: Color(0xFFAF7F0A75),///اللون غلط هنا
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Text(
                  'لم يصلك الرمز؟',
                  style: getRegularStyle(
                    fontSize: AppSize.s12,
                    color: AppColors.grey5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}