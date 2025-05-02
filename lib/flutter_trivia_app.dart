import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlutterTriviaApp extends StatelessWidget {
  const FlutterTriviaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(body: Center(child: Text('Hello.. this is  a test', style: TextStyle(fontWeight: FontWeight.w900),),),),
    );
  }
}
