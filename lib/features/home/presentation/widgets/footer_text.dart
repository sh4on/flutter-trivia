import 'package:flutter/material.dart';
import 'package:flutter_trivia/utils/constants/colors.dart';
import 'package:flutter_trivia/utils/constants/sizes.dart';
import 'package:flutter_trivia/utils/constants/text_strings.dart';

class FooterText extends StatelessWidget {
  const FooterText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: FSizes.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${FTexts.poweredBy} ',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            FTexts.appName,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(color: FColors.lightNavy),
          ),
        ],
      ),
    );
  }
}