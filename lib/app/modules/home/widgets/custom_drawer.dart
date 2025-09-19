import 'package:flutter/material.dart';
import 'package:shafa_code/app/core/theme/app_assets.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';
import 'package:shafa_code/app/core/theme/text_config.dart';
import 'package:shafa_code/app/modules/home/widgets/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: 20),
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColor.bgAuth),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close, size: 20, color: Colors.black87),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('"Peace comes from within"', style: AppText().bodyMedium),
                  Text('"Do not seek it without"', style: AppText().bodyMedium),
                ],
              ),
            ),

            SizedBox(height: 15),
            DrawerItem(imagePath: AppAssets.explore, title: 'Explore',onTap: (){},),
            DrawerItem(imagePath: AppAssets.popular, title: 'Popular',onTap: (){}),
            DrawerItem(imagePath: AppAssets.latest, title: 'latest',onTap: (){}),
            DrawerItem(imagePath: AppAssets.credentialSound, title: 'Credential Sound',onTap: (){}),
            DrawerItem(imagePath: AppAssets.wallpaper, title: 'Wallpaper',onTap: (){}),
            DrawerItem(imagePath: AppAssets.naturalSound, title: 'Natural Sound',onTap: (){}),
            DrawerItem(imagePath: AppAssets.sleeping, title: 'Sleeping',onTap: (){}),
            DrawerItem(imagePath: AppAssets.meditation, title: 'Meditation',onTap: (){}),
            DrawerItem(imagePath: AppAssets.breathing, title: 'Breathing Exercise',onTap: (){}),
            DrawerItem(imagePath: AppAssets.meditationalAudios, title: 'Meditational Audio',onTap: (){}),
            DrawerItem(imagePath: AppAssets.shortMeditation, title: 'Short Meditation',onTap: (){}),
            DrawerItem(imagePath: AppAssets.topQuotes, title: 'Top Quotes',onTap: (){}),
            DrawerItem(imagePath: AppAssets.soulCheckIn, title: 'Soul Check-In',onTap: (){}),
            DrawerItem(imagePath: AppAssets.sacredJournals, title: 'Sacred Journals',onTap: (){}),
            DrawerItem(imagePath: AppAssets.medicineNote, title: 'Medicine Note',onTap: (){}),
            DrawerItem(imagePath: AppAssets.memorialCard, title: 'Memorial Card',onTap: (){}),
            DrawerItem(imagePath: AppAssets.save, title: 'Save',onTap: (){}),

            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Text('Log Out', style: AppText().bodyMedium.copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
                      const SizedBox(width: 8),
                      Icon(Icons.logout, color: Colors.brown[700], size: 20),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

          ],
        ),
      ),
    );
  }
}
