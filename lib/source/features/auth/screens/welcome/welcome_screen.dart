import 'package:fitnesstracker/source/common/fade_inanimation/animation_designe_widget.dart';
import 'package:fitnesstracker/source/common/fade_inanimation/fade_in_animation_controller.dart.dart';
import 'package:fitnesstracker/source/common/fade_inanimation/fade_in_animation_model.dart';
import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:fitnesstracker/source/constants/image_strings.dart';
import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:fitnesstracker/source/features/auth/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    var mediaQuery = MediaQuery.of(context);
    var hight = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? gLightDarkcolor : gwelcomeSlight,
      body: Stack(
        children: [
          GFadeAnimation(
            durationInMs: 1200,
            animate: GAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftBefore: 0,
              leftAfter: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
            ),
            child: Container(
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
                            onPressed: () => Get.to(() => const LoginScreen()),
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
          ),
        ],
      ),
    );
  }
}
