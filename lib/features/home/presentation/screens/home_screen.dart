import 'package:flutter/material.dart';
import 'package:flutter_trivia/features/home/logic/home_controller.dart';
import 'package:get/get.dart';

import '../../../../utils/device/system_utils.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find<HomeController>();
    final bool isDarkMode = SystemUtils.isDarkMode(context);

    return SafeArea(
      child: Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBarWidget(context: context),
        body: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}


