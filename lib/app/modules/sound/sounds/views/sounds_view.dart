import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';
import 'package:shafa_code/app/modules/sound/sound_details/bindings/sound_details_binding.dart';
import 'package:shafa_code/app/modules/sound/sound_details/views/sound_details_view.dart';
import '../controllers/sounds_controller.dart';
import '../widgets/music_player_card.dart';

class SoundsView extends GetView<SoundsController> {
  const SoundsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgPrimary,

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Obx(() {
          return ListView.builder(
            itemCount: controller.musicTracks.length,
            itemBuilder: (context, index) {
              final track = controller.musicTracks[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: MusicPlayerCard(
                  backgroundImage: track.backgroundImage,
                  songName: track.songName,
                  duration: track.duration,
                  artistName: track.artistName,
                  tags: track.tags,
                  views: track.views,
                  cardTap: (){
                    Get.to(()  => SoundDetailsView(), binding: SoundDetailsBinding(), transition: Transition.rightToLeft);
                  },
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
