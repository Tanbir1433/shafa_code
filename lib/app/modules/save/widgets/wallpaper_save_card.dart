import 'package:flutter/material.dart';
import 'package:shafa_code/app/core/theme/app_assets.dart';

class WallpaperSaveCard extends StatelessWidget {
  const WallpaperSaveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 167 / 190,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 190,
          width: 167,
          child: Material(
            borderRadius: BorderRadius.circular(15),
            color: Colors.transparent,
            clipBehavior: Clip.hardEdge,
            child: Image.asset(AppAssets.qutoe2, fit: BoxFit.cover),
          ),
        );
      },
    );
  }
}
