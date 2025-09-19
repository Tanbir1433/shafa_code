import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_assets.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';
import 'package:shafa_code/app/modules/medicine_note/widgets/add_new_task.dart';

import '../controllers/medicine_note_controller.dart';
import '../widgets/todo_task.dart';

class MedicineNoteView extends GetView<MedicineNoteController> {
  const MedicineNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgPrimary,
      appBar: AppBar(
        backgroundColor: AppColor.bgPrimary,
        surfaceTintColor: AppColor.bgPrimary,
        iconTheme: IconThemeData(color: AppColor.bgAuth),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Obx(
            () => ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.todoList.length,
              separatorBuilder: (_, __) => const SizedBox(height: 15),
              itemBuilder: (context, index) {
                final todo = controller.todoList[index];
                return TodoTask(todo: todo, onTap: () {});
              },
            ),
          ),
        ),
      ),

      /// ==================== Add new task =========================
      floatingActionButton: IconButton(
        style: IconButton.styleFrom(
          backgroundColor: AppColor.bgAuth,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30)),
          padding: EdgeInsets.all(15),
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (_) => const AddNewTask(),
          );
        },
        icon: Image.asset(AppAssets.addIcons, height: 24),
      ),
    );
  }
}
