import 'package:flutter/material.dart';
import 'package:rawaquh/core/constant/custom_social_buttons.dart';
import '../../../../core/constant/custom_OrDivider.dart';
import '../../../../core/helpers/specing.dart';
import '../widgets/auth_container.dart';
import '../widgets/sign_in_button.dart';
import '../widgets/sign_in_form.dart';
import '../widgets/sign_in_header.dart';
import '../widgets/sign_in_register_row.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final TextEditingController emailController = TextEditingController();///controller
  final TextEditingController passwordController = TextEditingController();///controller
  final GlobalKey<FormFieldState<String>> emailKey = GlobalKey();///access field
  final GlobalKey<FormFieldState<String>> passwordKey = GlobalKey();///access field

  @override
  void dispose() {
    emailController.dispose();///delete=>controller
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthContainer(
        header: const SignInHeader(),
        child: Column(
          children: [
            SignInForm(
              emailController: emailController,
              passwordController: passwordController,
              emailKey: emailKey,
              passwordKey: passwordKey,
            ),
            verticalSpace(40),
            const SignInButton(),
            verticalSpace(16),
            const OrDivider(),
            verticalSpace(50),
            const CustomSocialButtons(),
            verticalSpace(114),
            const SignInRegisterRow(),
          ],
        ),
      ),
    );
  }
}