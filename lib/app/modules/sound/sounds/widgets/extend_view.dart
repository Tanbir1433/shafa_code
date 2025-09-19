import 'package:flutter/material.dart';
import '../../../../core/theme/app_color_config.dart';
import '../../../../core/theme/text_config.dart';

class ExtendView extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  const ExtendView({super.key, required this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2).copyWith(right: 6),
          child: Row(
            children: [
              Icon(icon, size: 20, color: AppColor.appWhite),
              const SizedBox(width: 5),
              Text(text, style: AppText().bodyMediumBold.copyWith(color: AppColor.appWhite)),
            ],
          ),
        ),
      ),
    );
  }
}
