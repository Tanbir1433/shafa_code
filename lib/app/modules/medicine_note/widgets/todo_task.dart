import 'package:flutter/material.dart';
import 'package:r_icon_pro/r_icon_pro.dart';

import '../../../core/theme/app_color_config.dart';
import '../../../core/theme/text_config.dart';
import '../../../data/model/todo_model.dart';

class TodoTask extends StatelessWidget {
  final TodoModel todo;
  final VoidCallback onTap;

  const TodoTask({
    super.key,
    required this.todo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Material(
        borderRadius: BorderRadius.circular(25),
        clipBehavior: Clip.hardEdge,
        color: AppColor.bgAuth,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10).copyWith(bottom: 4),
            child: Row(
              children: [
                Icon(
                  todo.isChecked ? RIcon.Check_Circle : Icons.check_circle,
                  color: AppColor.button,
                ),
                const SizedBox(width: 5),
                Text(
                  todo.taskName,
                  style: AppText().bodyMedium.copyWith(
                    fontSize: 14,
                    color: AppColor.button,
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    todo.description,
                    style: AppText().bodyExtraSmall.copyWith(
                      color: AppColor.button,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
