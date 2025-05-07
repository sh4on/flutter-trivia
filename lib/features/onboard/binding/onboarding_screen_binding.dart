import 'package:flutter_trivia/features/onboard/logic/onboarding_screen_controller.dart';
import 'package:get/get.dart';

class OnBoardingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OnBoardingScreenController());
  }
}
