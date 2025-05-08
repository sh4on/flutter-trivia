import 'package:flutter/material.dart';
import 'package:flutter_trivia/features/onboard/presentation/widgets/button.dart';
import 'package:flutter_trivia/utils/constants/colors.dart';
import 'package:flutter_trivia/utils/constants/sizes.dart';
import 'package:flutter_trivia/utils/device/system_utils.dart';
import 'package:flutter_trivia/utils/routes/route_names.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/text_strings.dart';
import '../../logic/onboarding_screen_controller.dart';
import 'custom_dot.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    OnBoardingScreenController controller =
        Get.find<OnBoardingScreenController>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: FSizes.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // dot indicator
          Row(
            children: List.generate(
              3,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: FSizes.sm),
                  child: Obx(
                    () {
                      return InkWell(
                        onTap: () {
                          controller.jumpTo(index);
                        },
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: CustomDot(
                          color: controller.currentPage.value == index
                              ? SystemUtils.isDarkMode(context)
                                  ? FColors.lightNavy
                                  : FColors.primary
                              : FColors.grey,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),

          // next/continue button
          Obx(
            () {
              return Button(
                buttonName: controller.currentPage.value == 2
                    ? FTexts.tContinue
                    : FTexts.next,
                onClick: () {
                  if (controller.currentPage < 2) {
                    controller.nextPage();
                  } else {
                    Get.offAndToNamed(RouteNames.home);
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
