
import 'package:flutter/material.dart';
import 'package:shafa_code/app/core/theme/text_config.dart';

class DrawerItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback? onTap;

  const DrawerItem({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 24,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: AppText().bodyMedium.copyWith(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
