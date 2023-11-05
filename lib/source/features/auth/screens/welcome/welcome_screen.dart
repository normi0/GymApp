import 'package:fitnesstracker/source/constants/image_strings.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Image(
            image: AssetImage(gWelcomeScreenImage),
          ),
          const Text(gWelcomeTitle),
          const Text(gWelcomeSubTitle),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text(gLogin),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(gSigneUp),
              ),
            ],
          )
        ],
      )),
    );
  }
}
