import 'package:fitnesstracker/source/features/auth/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;
  // ignore: non_constant_identifier_names
  Future StartAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );
    animate.value = true;
    await Future.delayed(
      const Duration(milliseconds: 5000),
    );
    Get.to(
      const WelcomScreen(),
    );
    // ignore: use_build_context_synchronously
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const WelcomScreen(),
    //   ),
    // );
  }
}
