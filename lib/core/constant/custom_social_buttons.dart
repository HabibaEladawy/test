import 'package:flutter/cupertino.dart';
import 'package:rawaquh/core/constant/social_button.dart';

import '../../gen/assets.gen.dart';

class CustomSocialButtons extends StatelessWidget {
  const CustomSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(icon: Assets.svg.google, onTap: () {}),
        SizedBox(width: 23),

        ///AppSpecing =>
        SocialButton(icon: Assets.svg.google, onTap: () {}),/// مش راضيه تظهر
      ],
    );
  }
}
