import 'package:flutter/material.dart';
import 'package:r_icon_pro/r_icon_pro.dart';
import '../../../core/theme/app_color_config.dart';
import '../../../core/theme/text_config.dart';

class AddNewTask extends StatelessWidget {
  const AddNewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.bgAuth,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cancel", style: AppText().bodyMedium.copyWith(color: AppColor.button,fontSize: 16,fontWeight: FontWeight.w600)),
              Text("New To-dos", style: AppText().bodyMedium.copyWith(color: AppColor.button,fontSize: 16,fontWeight: FontWeight.w600)),
              Text("Next", style: AppText().bodyMedium.copyWith(color: AppColor.button,fontSize: 16,fontWeight: FontWeight.w600)),
            ],
          ),
          const SizedBox(height: 20),

          Material(
            color: AppColor.button,
            borderRadius: BorderRadius.circular(40),
            clipBehavior: Clip.hardEdge,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  const Icon(RIcon.Calendar, color: Colors.white, size: 22),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "New To-dos",
                      style: AppText().bodyMedium.copyWith(color: AppColor.bgAuth,fontSize: 16),
                    ),
                  ),
                  const Icon(Icons.access_time_rounded, color: Colors.white, size: 22),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          ///======================= Repeat Row ====================================
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              border: Border.all(color: AppColor.button.withOpacity(0.5)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Repeat", style: AppText().bodyMedium.copyWith(color: AppColor.button,fontSize: 16,fontWeight: FontWeight.w600)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Everyday", style: AppText().bodyMedium.copyWith(color: AppColor.button, fontSize: 12)),
                        const SizedBox(width: 6),
                        const Icon(Icons.chevron_right, color: Colors.brown,),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: AppColor.button,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("End Repeat", style: AppText().bodyMedium.copyWith(color: AppColor.button,fontSize: 16,fontWeight: FontWeight.w600)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("After 1 month", style: AppText().bodyMedium.copyWith(color: AppColor.button, fontSize: 12)),
                        const SizedBox(width: 6),
                        const Icon(Icons.chevron_right, color: Colors.brown,),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
