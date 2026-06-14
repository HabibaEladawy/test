import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/custom_button.dart';
import '../../../../core/constant/custom_header.dart';
import '../../../../core/helpers/specing.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/values_manager.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/auth_container.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthContainer(
        header: CustomHeader(
          title: 'يا اهلا بك في عالم رواقه',
          subTitle: '',
          bottomSpacing: 126.sp,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(36),
            Container(
              width: 106.w,
              height: 105.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.primaryColor,
                  width: 2,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  Assets.png.sucess.path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            verticalSpace(32),
            Text(
              'حسابك الحين جاهز ومأمين بالكامل، تقدر تبدأ رحلة الراحة والدلال\n وحجز مواعيدك بكل سهولة',
              style: getMediumStyle(
                fontSize: AppSize.s12,
                color: Color(0xFF615E5E),
              ),
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
            verticalSpace(25),
            CustomButton(
              onTap: () {
                ///Navigate
              },
              data: 'دخول التطبيق',
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