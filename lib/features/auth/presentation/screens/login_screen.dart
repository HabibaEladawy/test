import 'package:flutter/material.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/login_buttons_section.dart';
import '../widgets/login_logo_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.png.bgLogin.path),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          children: [
            LoginLogoSection(),
            LoginButtonsSection(),
          ],
        ),
      ),
    );
  }
}