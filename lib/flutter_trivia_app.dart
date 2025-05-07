import 'package:flutter/material.dart';
import 'package:flutter_trivia/utils/routes/route_names.dart';
import 'package:flutter_trivia/utils/routes/route_pages.dart';
import 'package:flutter_trivia/utils/theme/theme.dart';
import 'package:get/get.dart';

class FlutterTriviaApp extends StatelessWidget {
  const FlutterTriviaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: FAppTheme.lightTheme,
      darkTheme: FAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.onBoard,
      getPages: routePages,
    );
  }
}
