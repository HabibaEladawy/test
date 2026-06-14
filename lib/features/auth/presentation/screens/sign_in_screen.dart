import 'package:flutter/material.dart';
import 'package:rawaquh/core/constant/custom_social_buttons.dart';

import '../../../../core/constant/custom_OrDivider.dart';
import '../../../../core/helpers/specing.dart';
import '../widgets/auth_container.dart';
import '../widgets/sign_in_button.dart';
import '../widgets/sign_in_form.dart';
import '../widgets/sign_in_header.dart';
import '../widgets/sign_in_register_row.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthContainer(
        header: const SignInHeader(),
        child: Column(
          children: [
            SignInForm(
              emailController: TextEditingController(),
              passwordController: TextEditingController(),
              emailKey: GlobalKey<FormFieldState>(),
              passwordKey: GlobalKey<FormFieldState>(),
            ),
            verticalSpace(40),
            const SignInButton(),
            verticalSpace(16),
            const OrDivider(),
            verticalSpace(56),
            const CustomSocialButtons(),
            verticalSpace(100),
            const SignInRegisterRow(),
          ],
        ),
      ),
    );
  }
}