import 'package:flutter/material.dart';
import 'package:flutter_trivia/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/system_utils.dart';

class Button extends StatelessWidget {
  final String buttonName;
  final VoidCallback onClick;

  const Button({
    super.key,
    required this.buttonName,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: FSizes.sm - 2,
          horizontal: FSizes.lg - 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(FSizes.sm),
          color: isDarkMode(context)
              ? FColors.white.withValues(alpha: 0.15)
              : Colors.black12,
        ),
        child: Text(
          buttonName,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}