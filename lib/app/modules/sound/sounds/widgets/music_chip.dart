import 'package:flutter/material.dart';

import '../../../../core/theme/app_color_config.dart';

class MusicChip extends StatelessWidget {
  final double height;
  final Color? color;
  const MusicChip({super.key, required this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 1.5),
      decoration: BoxDecoration(
        color:color ?? AppColor.bgAuth,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
