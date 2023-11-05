import 'package:fitnesstracker/source/constants/colors.dart';
import 'package:fitnesstracker/source/constants/text_string.dart';
import 'package:fitnesstracker/source/features/auth/models/on_boarding_model.dart';
import 'package:fitnesstracker/source/features/auth/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../../../constants/image_strings.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;
  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: gOnBoardinImage1,
        title: gOnBoardingTitle1,
        subtitle: gOnBoardingSubTitle1,
        counterText: gOnBoardingCount1,
        ggcolor: gOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: gOnBoardinImage2,
        title: gOnBoardingTitle2,
        subtitle: gOnBoardingSubTitle2,
        counterText: gOnBoardingCount2,
        ggcolor: gOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: gOnBoardinImage3,
        title: gOnBoardingTitle3,
        subtitle: gOnBoardingSubTitle3,
        counterText: gOnBoardingCount3,
        ggcolor: gOnBoardingPage3Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: gOnBoardinImage4,
        title: gOnBoardingTitle4,
        subtitle: gOnBoardingSubTitle4,
        counterText: gOnBoardingCount4,
        ggcolor: gOnBoardingPage4Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: gOnBoardinImage5,
        title: gOnBoardingTitle5,
        subtitle: gOnBoardingSubTitle5,
        counterText: gOnBoardingCount5,
        ggcolor: gOnBoardingPage5Color,
      ),
    ),
  ];
  skip() => controller.jumpToPage(page: 4);
  animatedToNexrSlide() {
    int nextpage = controller.currentPage + 1;
    controller.animateToPage(page: nextpage);
  }

  void onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }
}
