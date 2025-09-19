import 'package:flutter/material.dart';

import '../../../../core/theme/app_color_config.dart';
import '../../../../core/theme/text_config.dart';

class HasTag extends StatelessWidget {

  final String text;

  const HasTag({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: RichText(
        text: TextSpan(
          text: '#',
          style: AppText().bodyMedium.copyWith(fontSize: 12,color: AppColor.bgAuth,fontWeight: FontWeight.w600),
          children: [TextSpan(text: text, style: AppText().bodyMedium.copyWith(fontSize: 12,color: AppColor.bgAuth,fontWeight: FontWeight.w600))],
        ),
      ),
    );
  }
}