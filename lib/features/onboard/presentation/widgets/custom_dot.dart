import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class CustomDot extends StatelessWidget {
  final Color color;

  const CustomDot({
    super.key, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: FSizes.md - 2,
      width: FSizes.md - 2,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
