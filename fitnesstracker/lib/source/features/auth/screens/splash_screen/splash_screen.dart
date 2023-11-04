import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:fitnesstracker/source/constants/image_strings.dart';
import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:fitnesstracker/source/features/auth/controller/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  // SplashScreenController splashScreenController = SplashScreenController();
  final SplashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    SplashController.StartAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              top: SplashController.animate.value ? 0 : -30,
              left: SplashController.animate.value ? 0 : -30,
              duration: const Duration(milliseconds: 1600),
              child: const Image(
                image: AssetImage(gSplashTopIcon),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 80,
              left: SplashController.animate.value ? gDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: SplashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gAppNAme,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      gAppTagLine,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
              bottom: SplashController.animate.value ? 100 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: SplashController.animate.value ? 1 : 0,
                child: const Image(
                  image: AssetImage(gSplashImage),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              bottom: SplashController.animate.value ? 60 : 0,
              right: gDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: SplashController.animate.value ? 1 : 0,
                child: Container(
                  width: gSplashContainerSize,
                  height: gSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: gPrimarycolor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
}
