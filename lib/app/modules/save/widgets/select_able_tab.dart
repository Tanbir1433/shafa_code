import 'package:flutter/material.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';
import 'package:shafa_code/app/core/theme/text_config.dart';

class SelectAbleTab extends StatelessWidget {
  final String title;
  final String asset;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectAbleTab({
    super.key,
    required this.title,
    required this.asset,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: AppColor.bgAuth,
            width: 1,
          ),
        ),
        clipBehavior: Clip.hardEdge,
        color: isSelected ? AppColor.bgAuth : Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  asset,
                  height: 16,
                  color: isSelected ? AppColor.bgPrimary : AppColor.bgAuth,
                ),
                const SizedBox(width: 5),
                Text(
                  title,
                  style: AppText().bodyMedium.copyWith(
                    color: isSelected ? AppColor.bgPrimary : AppColor.bgAuth,
                    fontWeight: FontWeight.w600,
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
