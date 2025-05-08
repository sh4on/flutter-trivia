import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'footer_text.dart';
import 'list_tile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Main content in a scrollable ListView
          Expanded(
            child: ListView(
              children: [
                // header content
                DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: FSizes.md,
                    children: [
                      // Heading
                      Text(
                        FTexts.appName,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),

                      // Content under heading
                      Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            FTexts.motivation,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Home
                CustomListTile(
                  text: FTexts.home,
                  icon: Icons.home,
                  onTap: () {
                    Get.back();
                  },
                ),

                // About Us
                CustomListTile(
                  text: FTexts.aboutUs,
                  icon: Icons.info,
                  onTap: () {
                    // Navigator.pushNamed(context, '/about_us');
                  },
                ),

                // Feedback
                CustomListTile(
                  text: FTexts.feedback,
                  icon: Icons.feedback,
                  onTap: () {
                    // Navigator.pushNamed(context, '/feedback');
                  },
                ),

                // Rate Us
                CustomListTile(
                  text: FTexts.rateUs,
                  icon: Icons.star_outlined,
                  onTap: () {
                    // showRatingDialog(context);
                  },
                ),

                // More Apps
                CustomListTile(
                  text: FTexts.moreApps,
                  icon: Icons.apps,
                  onTap: () {
                    // HelperFunction.launchURL(FTexts.playStoreUrl);
                  },
                ),

                // Privacy Tip
                CustomListTile(
                  text: FTexts.privacyPolicy,
                  icon: Icons.privacy_tip,
                  onTap: () {
                    // Navigator.pushNamed(context, '/privacy_policy');
                  },
                ),
              ],
            ),
          ),

          // Footer text at the bottom
          const FooterText(),
        ],
      ),
    );
  }
}