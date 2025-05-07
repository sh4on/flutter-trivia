import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingScreenController extends GetxController {
  PageController pageController = PageController();
  RxInt currentPage = 0.obs;

  void jumpTo(int index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    jumpTo(currentPage.value + 1);
  }
}
