import 'package:flutter_trivia/features/home/logic/home_controller.dart';
import 'package:get/get.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
