import 'package:fitnesstracker/source/constants/image_strings.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:flutter/material.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({
    super.key,
    required this.height,
  });
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: const AssetImage(gSignUpImage),
          height: height * 0.2,
        ),
        Text(
          gSignUpTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const Text(gSignUpSubtitle),
      ],
    );
  }
}
