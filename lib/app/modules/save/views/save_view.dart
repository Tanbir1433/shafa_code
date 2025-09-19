import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';
import 'package:shafa_code/app/modules/save/widgets/select_able_tab.dart';
import '../controllers/save_controller.dart';

class SaveView extends GetView<SaveController> {
  const SaveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgPrimary,
      appBar: AppBar(
        backgroundColor: AppColor.bgPrimary,
        surfaceTintColor: AppColor.bgPrimary,
        iconTheme: IconThemeData(color: AppColor.bgAuth),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: controller.items.length,
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final item = controller.items[index];
                  return Obx(() {
                    return SelectAbleTab(
                      title: item["title"]!,
                      asset: item["asset"]!,
                      isSelected: controller.selectedIndex.value == index,
                      onTap: () => controller.selectItem(index),
                    );
                  });
                },
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: Obx(() {
                return controller.views[controller.selectedIndex.value];
              }),
            ),
          ],
        ),
      ),
    );
  }
}
