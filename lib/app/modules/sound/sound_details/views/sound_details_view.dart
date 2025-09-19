import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_color_config.dart';

import '../controllers/sound_details_controller.dart';
import '../widgets/music_details_card.dart';

class SoundDetailsView extends GetView<SoundDetailsController> {
  const SoundDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgPrimary,
      appBar: AppBar(
        backgroundColor: AppColor.bgPrimary,
        surfaceTintColor: AppColor.bgPrimary,
        iconTheme: IconThemeData(color: AppColor.bgAuth),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child: Column(
          children: [
            MusicDetailsCard(),


          ],
        ),
      ),
    );
  }
}


