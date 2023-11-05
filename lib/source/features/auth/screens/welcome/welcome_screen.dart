import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:fitnesstracker/source/constants/image_strings.dart';
import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var hight = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? gLightDarkcolor : gSecondarycolor,
      body: Container(
          padding: const EdgeInsets.all(gDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: const AssetImage(gWelcomeScreenImage),
                height: hight * 0.6,
              ),
              Column(
                children: [
                  Text(
                    gWelcomeTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const Text(gWelcomeSubTitle),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        gLogin.toUpperCase(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        gSigneUp.toUpperCase(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
