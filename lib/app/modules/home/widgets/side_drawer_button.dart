import 'package:flutter/material.dart';

import '../../../core/theme/app_assets.dart';
import 'custom_drawer.dart';

class SideDrawerButton extends StatelessWidget {
  const SideDrawerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          barrierColor: Colors.black.withOpacity(0.5),
          builder: (BuildContext context) {
            return Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: const CustomDrawer(),
                ),
              ],
            );
          },
        );
      },
      icon: Image(image: AssetImage(AppAssets.list), height: 35),
    );
  }
}