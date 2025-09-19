import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/theme/app_color_config.dart';
import '../../soul/widgets/soul_card.dart';
import '../controllers/top_controller.dart';

class TopView extends GetView<TopController> {
  const TopView({super.key});
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
