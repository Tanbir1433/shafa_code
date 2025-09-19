import 'package:get/get.dart';
import 'package:shafa_code/app/core/theme/app_assets.dart';

import '../../../../data/model/music_track.dart';

class SoundsController extends GetxController {
  final musicTracks = <MusicTrack>[
    MusicTrack(
      backgroundImage: AppAssets.music,
      songName: 'Wiper',
      duration: '10.00',
      artistName: 'DJ Storm',
      tags: ['Ambition', 'Inspiration', 'Motivational'],
      views: '569803',
    ),
    MusicTrack(
      backgroundImage: AppAssets.music2,
      songName: 'Rain Dance',
      duration: '8.45',
      artistName: 'Skyline Crew',
      tags: ['Chill', 'RainyDay', 'Relax'],
      views: '220145',
    ),
    MusicTrack(
      backgroundImage: AppAssets.music3,
      songName: 'Urban Beats',
      duration: '12.30',
      artistName: 'Urban Soul',
      tags: ['HipHop', 'Groove', 'Party'],
      views: '780432',
    ),
  ].obs;
}

