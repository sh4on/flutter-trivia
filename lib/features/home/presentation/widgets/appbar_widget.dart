import 'package:flutter/material.dart';
import 'package:flutter_trivia/utils/constants/colors.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/device/system_utils.dart';
import '../../logic/home_controller.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;

  const AppBarWidget({
    super.key,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find<HomeController>();
    final bool isDarkMode = SystemUtils.isDarkMode(context);

    return AppBar(

      // drawer icon
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: isDarkMode ? Colors.white : FColors.primary,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),

      // title (Flutter Trivia)
      title: const Text(FTexts.appName),

      // dark/light mode button
      actions: [
        IconButton(
          onPressed: () {
            controller.toggleThemeMode();
          },
          icon: Icon(
            isDarkMode ? Icons.light_mode : Icons.dark_mode,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(FSizes.appBarHeight);
}
