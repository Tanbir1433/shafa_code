import 'package:flutter/material.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';
import 'package:shafa_code/app/core/theme/text_config.dart';
import '../../../core/widgets/buttons/see_all_button.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const SectionHeader({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppText().bodyMedium.copyWith(fontSize: 16, color: AppColor.bgAuth)),
          SeeAllButton(onTap: onTap),
        ],
      ),
    );
  }
}
