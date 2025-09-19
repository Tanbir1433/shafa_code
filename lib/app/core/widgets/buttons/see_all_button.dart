import 'package:flutter/material.dart';

import '../../theme/app_color_config.dart';
import '../../theme/text_config.dart';

class SeeAllButton extends StatelessWidget {

  final VoidCallback? onTap;
  const SeeAllButton({
    super.key, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 3),
          child: Row(
            children: [
              Text('See all',style: AppText().bodyExtraSmall.copyWith(color: AppColor.bgAuth),),
              SizedBox(width: 5),
              Icon(Icons.arrow_forward_ios,size: 14,color: AppColor.bgAuth,)
            ],
          ),
        ),
      ),
    );
  }
}