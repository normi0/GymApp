import 'package:fitnesstracker/source/constants/image_strings.dart';
import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:fitnesstracker/source/features/auth/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(
          height: gFormHight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(gGoogleLogoImage),
              width: 20.0,
            ),
            label: const Text(gSignInWithGoogle),
          ),
        ),
        const SizedBox(
          height: gFormHight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(gFaceBookLogoImage),
              width: 20.0,
            ),
            label: const Text(gSignInWithFacebook),
          ),
        ),
        const SizedBox(
          height: gFormHight - 20,
        ),
        TextButton(
          onPressed: () => Get.to(() => const LoginScreen()),
          child: Text.rich(
            TextSpan(
              text: gAlreadyHaveAccount,
              style: Theme.of(context).textTheme.bodyLarge,
              children: const [
                TextSpan(
                  text: gLogin,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
