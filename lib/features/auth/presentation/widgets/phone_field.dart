import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/custom_textformfield.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/values_manager.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({
    super.key,
    required this.controller,
    required this.validator,
    required this.formFieldKey,
    this.onPrefixTap,
    this.prefixText = '+966',
    this.prefixTextStyle,

  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final GlobalKey<FormFieldState> formFieldKey;
  final VoidCallback? onPrefixTap;
  final String prefixText;
  final TextStyle? prefixTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child: CustomTextformfeild(

            keyboardType: TextInputType.phone,
            controller: controller,
            validator: validator,
            formFieldKey: formFieldKey,
            hintText: '05xxxxxxxx',
            textDirection: TextDirection.rtl,
            hintStyle: getRegularStyle(fontSize: AppSize.s14,
                color: Color(0xFFC0BCBC)),
          ),
        ),
        SizedBox(width: 3.w),

        GestureDetector(
          onTap: onPrefixTap,
          child: Container(
            width: 67.w,
            height: 70.h,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderColor),
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: Center(
              child: Text(
                prefixText,
                style: prefixTextStyle ?? inputTextStyle(color: AppColors.textPrimaryColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}