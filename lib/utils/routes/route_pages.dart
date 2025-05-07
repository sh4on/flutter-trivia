import 'package:flutter_trivia/features/onboard/binding/onboarding_screen_binding.dart';
import 'package:flutter_trivia/features/onboard/presentation/screens/onboarding_screen.dart';
import 'package:flutter_trivia/utils/routes/route_names.dart' show RouteNames;
import 'package:get/get.dart';

import '../../features/home/presentation/screens/home_screen.dart';

List<GetPage> routePages = [
  GetPage(
      name: RouteNames.onBoard,
      page: () => const OnboardingScreen(),
      binding: OnBoardingScreenBinding()),
  GetPage(
    name: RouteNames.home,
    page: () => const HomeScreen(),
    // binding:
  ),
];
