import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:fitnesstracker/source/features/auth/controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obontroller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obontroller.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            liquidController: obontroller.controller,
            onPageChangeCallback: obontroller.onPageChangeCallback,
          ),
          Positioned(
            bottom: 40,
            child: OutlinedButton(
              onPressed: () => obontroller.animatedToNexrSlide(),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: gDarkcolor, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obontroller.skip(),
              child: const Text(
                "skip",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Obx(
            () => Positioned(
                bottom: 20,
                child: AnimatedSmoothIndicator(
                  activeIndex: obontroller.currentPage.value,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color.fromARGB(255, 212, 138, 169),
                    dotHeight: 5.0,
                  ),
                  count: 5,
                )),
          )
        ],
      ),
    );
  }
}
