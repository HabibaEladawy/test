import 'package:flutter/cupertino.dart';
import 'package:rawaquh/core/constant/custom_header.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(title: 'انضم لعالم الرواقة',
        subTitle: 'خطوات بسيطة تفصلك عن حجز مواعيدك بكل راحة ودلال');
  }
}
