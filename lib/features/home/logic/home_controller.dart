import 'package:flutter/material.dart';
import 'package:flutter_trivia/utils/device/system_utils.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void toggleThemeMode() {
    Get.changeThemeMode(
      SystemUtils.isDarkMode(Get.context!) ? ThemeMode.light : ThemeMode.dark,
    );
  }
}
