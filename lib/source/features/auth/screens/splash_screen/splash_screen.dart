import 'package:fitnesstracker/source/common/fade_inanimation/animation_designe_widget.dart';
import 'package:fitnesstracker/source/common/fade_inanimation/fade_in_animation_model.dart';
import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:fitnesstracker/source/constants/image_strings.dart';
import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:fitnesstracker/source/common/fade_inanimation/fade_in_animation_controller.dart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          GFadeAnimation(
            durationInMs: 1600,
            animate: GAnimatePosition(
              topAfter: 0,
              topBefore: -30,
              leftBefore: -30,
              leftAfter: 0,
            ),
            child: const Image(
              image: AssetImage(gSplashTopIcon),
            ),
          ),
          GFadeAnimation(
            durationInMs: 2000,
            animate: GAnimatePosition(
              topBefore: 80,
              topAfter: 80,
              leftAfter: gDefaultSize,
              leftBefore: -80,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  gAppNAme,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const Text(
                  gAppTagLine, textAlign: TextAlign.center,
                  // style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
          GFadeAnimation(
            durationInMs: 2400,
            animate: GAnimatePosition(
              bottomBefore: 0,
              bottomAfter: 100,
            ),
            child: const Image(
              image: AssetImage(gSplashImage),
            ),
          ),
          GFadeAnimation(
            durationInMs: 2400,
            animate: GAnimatePosition(
                bottomBefore: 0,
                bottomAfter: 60,
                rightBefore: gDefaultSize,
                rightAfter: gDefaultSize),
            child: Container(
              width: gSplashContainerSize,
              height: gSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: gPrimarycolor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
}
