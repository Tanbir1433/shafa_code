
import 'package:flutter/material.dart';

import '../../../core/theme/app_assets.dart';

class AnnounceCard extends StatelessWidget {
  const AnnounceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 132,
        width: 340,
        child: Material(
          borderRadius: BorderRadius.circular(12),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: Image.asset(AppAssets.anouncment,fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
