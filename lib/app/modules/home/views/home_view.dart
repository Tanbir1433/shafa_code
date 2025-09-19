import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';
import 'package:shafa_code/app/modules/home/widgets/section_header.dart';
import '../controllers/home_controller.dart';
import '../widgets/announce_card.dart';
import '../widgets/featured_card.dart';
import '../widgets/first_home_card.dart';
import '../widgets/second_home_card.dart';
import '../widgets/side_drawer_button.dart'; // Import the custom drawer

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgPrimary,
      body: Stack(
        children: [
          // Main content
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///=========================== Header ===========================
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),

                      /// ============================= Custom drawer button ===========================
                      SideDrawerButton(),

                      const SizedBox(width: 15),
                      Expanded(
                        child: Obx(
                          () => SizedBox(
                            height: 53,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.categories.length,
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              separatorBuilder: (_, __) => const SizedBox(width: 8),
                              itemBuilder: (context, index) {
                                final item = controller.categories[index];
                                return FirstHomeCard(imagePath: item.icon, title: item.title, onTap: () {});
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25),

                  ///========================== Grid Body ===========================
                  SizedBox(
                    height: 380,
                    child: Obx(
                      () => GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          childAspectRatio: 1.4, // Adjust for sizing
                        ),
                        itemCount: controller.categories.length,
                        itemBuilder: (context, index) {
                          final item = controller.categories[index];
                          return SecondHomeCard(imagePath: item.icon, title: item.title, onTap: item.onTap);
                        },
                      ),
                    ),
                  ),

                  /// =========================== Feature item ===========================
                  SizedBox(height: 10),
                  SectionHeader(title: 'featured wallpaper'),
                  SizedBox(
                    height: 132,
                    child: Obx(
                      () => ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        itemCount: controller.featuredList.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 12),
                        itemBuilder: (context, index) {
                          final imagePath = controller.featuredList[index];
                          return FeaturedCard(imagePath: imagePath);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  /// =========================== Feature quotes ===========================
                  SectionHeader(title: 'featured quotes'),
                  SizedBox(
                    height: 132,
                    child: Obx(
                      () => ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        itemCount: controller.featuredQuotes.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 12),
                        itemBuilder: (context, index) {
                          final imagePath = controller.featuredQuotes[index];
                          return FeaturedCard(imagePath: imagePath);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  /// =========================== Featured Memorial Cards ===========================
                  SectionHeader(title: 'featured memorial cards'),
                  SizedBox(
                    height: 132,
                    child: Obx(
                      () => ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        itemCount: controller.featuredMoments.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 12),
                        itemBuilder: (context, index) {
                          final imagePath = controller.featuredMoments[index];
                          return FeaturedCard(imagePath: imagePath);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  /// =========================== announcement ===========================
                  SectionHeader(title: 'announcement'),
                  AnnounceCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
