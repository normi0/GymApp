import 'package:fitnesstracker/source/constants/image_strings.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.hight,
  });

  final double hight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: const AssetImage(gLoginImage),
          height: hight * 0.25,
        ),
        Text(
          gLoginTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const Text(
          gLoginSubtitle,
          // style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
