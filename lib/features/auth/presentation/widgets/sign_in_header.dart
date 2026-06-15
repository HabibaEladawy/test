import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rawaquh/core/constant/custom_header.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      title: 'يا اهلا بك في رواقة',

      subTitle: 'خطوات بسيطة تفصلك عن حجز مواعيدك بكل راحة ودلال',
      bottomSpacing: 36,
    );
  }
}
