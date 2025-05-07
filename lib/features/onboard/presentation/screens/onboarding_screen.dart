import 'package:flutter/material.dart';
import 'package:flutter_trivia/features/onboard/logic/onboarding_screen_controller.dart';
import 'package:flutter_trivia/utils/constants/image_strings.dart';
import 'package:flutter_trivia/utils/constants/text_strings.dart';
import 'package:get/get.dart';

import '../widgets/bottom_widget.dart';
import '../widgets/onboard_screen_content.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingScreenController controller =
        Get.find<OnBoardingScreenController>();

    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          controller: controller.pageController,
          itemCount: 3,
          onPageChanged: (value) {
            controller.currentPage.value = value;
          },
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return const OnBoardScreenContent(
                  lottieFiles: TImages.welcome,
                  title: FTexts.onBoardingTitle1,
                  subtitle: FTexts.onBoardingSubTitle1,
                );
              case 1:
                return const OnBoardScreenContent(
                  lottieFiles: TImages.testYourKnowledge,
                  title: FTexts.onBoardingTitle2,
                  subtitle: FTexts.onBoardingSubTitle2,
                );
              case 2:
                return const OnBoardScreenContent(
                  lottieFiles: TImages.prepareLikePro,
                  title: FTexts.onBoardingTitle3,
                  subtitle: FTexts.onBoardingSubTitle3,
                );
            }
          },
        ),
        bottomNavigationBar: const BottomWidget(),
      ),
    );
  }
}

