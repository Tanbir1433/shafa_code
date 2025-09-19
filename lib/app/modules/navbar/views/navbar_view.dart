import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_assets.dart';

import '../../../core/theme/app_color_config.dart';
import '../../../core/theme/text_config.dart';
import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgPrimary,

      /// ******************************** View *********************************
      body: Obx(() => controller.pages[controller.selectedIndex.value]),

      /// ******************************** Nav Bar Item *********************************
      bottomNavigationBar: Obx(
        () => Material(
          color: AppColor.bgAuth,
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: BottomNavigationBar(
              backgroundColor: AppColor.bgAuth,
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.selectedIndex.value,
              onTap: controller.changeIndex,
              enableFeedback: false,
              selectedLabelStyle: AppText().bodyMediumBold.copyWith(fontWeight: FontWeight.bold),
              unselectedLabelStyle: AppText().bodyMedium.copyWith(color: AppColor.button.withOpacity(0.2)),
              items: [
                BottomNavigationBarItem(icon: Image(image: AssetImage(AppAssets.home),height: 24,), label: 'Home'),
                BottomNavigationBarItem(icon: Image(image: AssetImage(AppAssets.sounds),height: 24,), label: 'Sound'),
                BottomNavigationBarItem(icon: Image(image: AssetImage(AppAssets.soul),height: 24,), label: 'Soul'),
                BottomNavigationBarItem(icon: Image(image: AssetImage(AppAssets.top),height: 24,), label: 'Top'),
                BottomNavigationBarItem(icon: Image(image: AssetImage(AppAssets.more),height: 24,), label: 'more'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
