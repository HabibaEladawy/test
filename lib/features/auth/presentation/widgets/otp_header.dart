import 'package:flutter/cupertino.dart';

import '../../../../core/constant/custom_header.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(title: 'تأكيد رقم الجوال',

        subTitle: '\n أرسلنا لك رمز التحقق المكون من 5 أرقام على الرقم +966'
            '5xxxxxxxx',
      bottomSpacing: 50,
    );
  }
}
