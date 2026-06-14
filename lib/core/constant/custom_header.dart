import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/assets.gen.dart';
import '../helpers/specing.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';
import '../utils/values_manager.dart';
import 'custom_png_image.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.title, required this.subTitle,this.bottomSpacing,});
  final String title;
  final String subTitle;
  final double? bottomSpacing;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: CustomPngImage(
                path: Assets.png.iconReturn.path,
                width: AppSize.s41.w,
                height: AppSize.s39.h,
              ),
            ),
            CustomPngImage(
              path: Assets.png.logo.path,///الصوره مش مظبوطه
              width: AppSize.s88.w,
              height: AppSize.s51.h,
            ),
          ],
        ),

        Text(
          title,
          style: getMediumStyle(
            fontSize: AppSize.s20,
            color: AppColors.primaryColor,
          ),
        ),
        verticalSpace(8),
        Text(
          subTitle,
          style: getMediumStyle(
            fontSize: AppSize.s14,
            color: Color(0xFF333333),///name

          ),
          textAlign: TextAlign.right,
        ),
        if (bottomSpacing != null) verticalSpace(bottomSpacing!),
      ],
    );
  }
}
