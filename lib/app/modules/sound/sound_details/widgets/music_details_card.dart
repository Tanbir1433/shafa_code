import 'package:flutter/material.dart';

import '../../../../core/theme/app_assets.dart';
import '../../../../core/theme/app_color_config.dart';
import '../../sounds/widgets/music_chip.dart';

class MusicDetailsCard extends StatelessWidget {
  const MusicDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      width: double.maxFinite,
      child: Material(
        color: AppColor.bgAuth,
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                height: 193,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage(AppAssets.music),fit: BoxFit.cover)
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  MusicChip(height: 30,color: AppColor.bgPrimary,),
                  MusicChip(height: 20,color: AppColor.bgPrimary),
                  MusicChip(height: 40,color: AppColor.bgPrimary),
                  MusicChip(height: 20,color: AppColor.bgPrimary),
                  MusicChip(height: 10,color: AppColor.bgPrimary),
                  MusicChip(height: 15,color: AppColor.bgPrimary),
                  MusicChip(height: 45,color: AppColor.bgPrimary),
                  MusicChip(height: 35,color: AppColor.bgPrimary),
                  MusicChip(height: 55,color: AppColor.bgPrimary),
                  MusicChip(height: 15,color: AppColor.bgPrimary),
                  MusicChip(height: 35,color: AppColor.bgPrimary),
                  MusicChip(height: 20,color: AppColor.bgPrimary),
                  MusicChip(height: 15,color: AppColor.bgPrimary),
                  MusicChip(height: 7,color: AppColor.bgPrimary),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}