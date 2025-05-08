import 'package:flutter/material.dart';

class SystemUtils {
  SystemUtils._();

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}