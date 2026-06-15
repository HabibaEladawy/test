import 'package:flutter/material.dart';
import 'package:rawaquh/core/constant/custom_OrDivider.dart';
import 'package:rawaquh/features/auth/presentation/widgets/custom_toggle_switch.dart';
import 'package:rawaquh/features/auth/presentation/widgets/register_button.dart';
import 'package:rawaquh/features/auth/presentation/widgets/register_form.dart';
import 'package:rawaquh/features/auth/presentation/widgets/register_header.dart';
import '../../../../core/constant/custom_social_buttons.dart';
import '../../../../core/helpers/specing.dart';

import '../widgets/auth_container.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthContainer(
        header: const RegisterHeader(),
        child: Column(
          children: [
            CustomToggleSwitch(),
            verticalSpace(37),
            RegisterForm(
              nameController: TextEditingController(),
              phoneController: TextEditingController(),
              emailController: TextEditingController(),
              passwordController: TextEditingController(),
              confirmPasswordController: TextEditingController(),
              nameKey: GlobalKey<FormFieldState>(),
              phoneKey: GlobalKey<FormFieldState>(),
              emailKey: GlobalKey<FormFieldState>(),
              passwordKey: GlobalKey<FormFieldState>(),
              confirmPasswordKey: GlobalKey<FormFieldState>(),
            ),
            verticalSpace(40),
            RegisterButton(),
            verticalSpace(24),
            OrDivider(),
            verticalSpace(56),
            const CustomSocialButtons(),
          ],
        ),
      ),
    );
  }
}