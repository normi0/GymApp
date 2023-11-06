import 'package:fitnesstracker/source/features/auth/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;
  // ignore: non_constant_identifier_names
  Future startSplashAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    animate.value = true;
    await Future.delayed(
      const Duration(milliseconds: 3000),
    );
    animate.value = false;
    await Future.delayed(
      const Duration(milliseconds: 2000),
    );
    Get.offAll(() => const WelcomeScreen());
    // ignore: use_build_context_synchronously
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const WelcomScreen(),
    //   ),
    // );
  }

  Future startAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    animate.value = true;
  }
}
