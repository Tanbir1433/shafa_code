import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_assets.dart';

import '../../../data/model/soul_track.dart';

class TopController extends GetxController {
  final soulTracks = <SoulTrack>[
    SoulTrack(
      backgroundImage: AppAssets.qutoe,
      duration: '10.00',
      artistName: 'DJ Storm',
      tags: ['Ambition', 'Inspiration', 'Motivational'],
      views: '569803',
    ),
    SoulTrack(
      backgroundImage: AppAssets.qutoe2,
      duration: '8.45',
      artistName: 'Skyline Crew',
      tags: ['Chill', 'RainyDay', 'Relax'],
      views: '220145',
    ),
    SoulTrack(
      backgroundImage: AppAssets.qutoe3,
      duration: '12.30',
      artistName: 'Urban Soul',
      tags: ['HipHop', 'Groove', 'Party'],
      views: '780432',
    ),
  ].obs;
}

