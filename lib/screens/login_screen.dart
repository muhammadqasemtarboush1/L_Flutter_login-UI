import 'package:flutter/material.dart';
import 'package:login_ui/consts/images.dart';
import 'package:login_ui/consts/sizes.dart';
import 'package:login_ui/widgets/social_media_button.dart';
import '../consts/strings.dart';
import '../widgets/action_button.dart';
import '../widgets/login_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // controller: controller,
        child: Center(
          child: Column(
            children: [
              Image.asset(AppImages.backgroundImage, height: 150),
              const Text(Strings.loginTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
              const SizedBox(height: 50),
              SocialButton(
                iconPath: AppImages.gIcon,
                label: Strings.gLogin,
                onPressed: () => print('google login'),
              ),
              const SizedBox(height: 20),
              SocialButton(
                iconPath: AppImages.fIcon,
                label: Strings.fLogin,
                horizontalPadding: AppSize.socialMedialablePaddingFB,
                onPressed: () => print('FaceBook login'),
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: AppSize.socialMedialableFontSize,
                ),
              ),
              const SizedBox(height: 15),
              const LoginField(
                hintText: Strings.emailInputHint,
              ),
              const SizedBox(height: 15),
              const LoginField(
                hintText: Strings.passwordInputHint,
              ),
              const SizedBox(height: 15),
              const ActionButton(
                actionName: Strings.loginBtn,
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
