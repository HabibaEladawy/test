import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rawaquh/core/utils/values_manager.dart';

import '../../../../core/constant/custom_png_image.dart';
import '../../../../gen/assets.gen.dart';

class LoginLogoSection extends StatelessWidget {
  const LoginLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: AppFlex.f5,
      child: Center(
        child: CustomPngImage(
          path: Assets.png.logo.path,
          width:AppSize.s507.w,
          height: AppSize.s359.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}