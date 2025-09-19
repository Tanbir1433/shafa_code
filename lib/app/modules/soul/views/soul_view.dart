import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shafa_code/app/modules/soul/widgets/soul_card.dart';

import '../../../core/theme/app_color_config.dart';
import '../controllers/soul_controller.dart';

class SoulView extends GetView<SoulController> {
  const SoulView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgPrimary,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Obx(() {
          return ListView.builder(
            itemCount: controller.soulTracks.length,
            itemBuilder: (context, index) {
              final track = controller.soulTracks[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SoulCard(
                  backgroundImage: track.backgroundImage,
                  duration: track.duration,
                  artistName: track.artistName,
                  tags: track.tags,
                  views: track.views,
                  cardTap: () {},
                  onPlayPressed: () {},
                  onShare: () {},
                  onDownload: () {},
                  onSave: () {},
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
