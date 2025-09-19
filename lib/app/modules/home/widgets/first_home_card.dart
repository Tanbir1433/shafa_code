import 'package:flutter/material.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';
import 'package:shafa_code/app/core/theme/text_config.dart';

class FirstHomeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback? onTap;

  const FirstHomeCard({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      color: AppColor.bgAuth,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(imagePath, height: 24),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: AppText().bodyMedium.copyWith(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
