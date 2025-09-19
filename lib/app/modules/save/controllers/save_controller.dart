import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_assets.dart';
import 'package:shafa_code/app/modules/save/widgets/quotes_save_card.dart';

import '../widgets/audio_save_card.dart';
import '../widgets/memorial_save_card.dart';
import '../widgets/wallpaper_save_card.dart';

class SaveController extends GetxController {
  final items = [
    {"title": "Audios", "asset": AppAssets.sounds},
    {"title": "Quotes", "asset": AppAssets.top},
    {"title": "Wallpapers", "asset": AppAssets.wallpaper},
    {"title": "Memorial Card", "asset": AppAssets.memorialCard},
  ];

  var selectedIndex = 0.obs;

  void selectItem(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> views = [
    AudioSaveCard(
      backgroundImage: AppAssets.music,
      songName: 'Wiper',
      duration: '10.00',
      artistName: 'DJ Storm',
      tags: ['Ambition', 'Inspiration', 'Motivational'],
      views: '569803',
    ),
    QuotesSaveCard(
      backgroundImage: AppAssets.qutoe3,
      duration: '12.30',
      artistName: 'Urban Soul',
      tags: ['HipHop', 'Groove', 'Party'],
      views: '780432',
    ),
    WallpaperSaveCard(),
    MemorialSaveCard(
      backgroundImage: AppAssets.giveup,
      duration: '12.30',
      artistName: 'Urban Soul',
      tags: ['HipHop', 'Groove', 'Party'],
      views: '780432',
    ),
  ];
}
