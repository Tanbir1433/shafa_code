
import 'package:flutter/material.dart';

import '../../../core/theme/app_assets.dart';


class BirdImage extends StatelessWidget {
  const BirdImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: -50,
            child: Opacity(
              opacity: 0.4,
              child: Image.asset(
                AppAssets.bird,
                fit: BoxFit.cover,
                height: 263,
              ),
            ),
          ),
        ],
      ),
    );
  }
}