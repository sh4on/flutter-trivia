import 'package:flutter/material.dart';
import 'package:flutter_trivia/utils/constants/sizes.dart';
import 'package:flutter_trivia/utils/routes/route_names.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/device/system_utils.dart';
import '../../logic/onboarding_screen_controller.dart';
import 'button.dart';

class OnBoardScreenContent extends StatelessWidget {
  final String lottieFiles;
  final String title;
  final String subtitle;

  const OnBoardScreenContent({
    super.key,
    required this.lottieFiles,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    OnBoardingScreenController controller =
        Get.find<OnBoardingScreenController>();

    return SizedBox(
      // Ensure full height
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          // Lottie image
          Stack(
            children: [
              // lottie anim
              Lottie.asset(lottieFiles),

              // skip button
              Positioned(
                top: FSizes.md,
                right: FSizes.md,
                child: Button(
                  buttonName: FTexts.skip,
                  onClick: () {
                    Get.offAndToNamed(RouteNames.home);
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: FSizes.xs),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: FSizes.sm),
            child: Column(
              children: [
                // Headline
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),

                // Subtitle
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
