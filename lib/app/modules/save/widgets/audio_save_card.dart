import 'package:flutter/material.dart';
import 'package:r_icon_pro/r_icon_pro.dart';

import '../../../core/theme/app_color_config.dart';
import '../../../core/theme/text_config.dart';
import '../../sound/sounds/widgets/extend_view.dart';
import '../../sound/sounds/widgets/has_tag.dart';
import '../../sound/sounds/widgets/music_chip.dart';

class AudioSaveCard extends StatelessWidget {
  final String backgroundImage;
  final String songName;
  final String duration;
  final String artistName;
  final List<String> tags;
  final String views;
  final VoidCallback? onPlayPressed;
  final VoidCallback? cardTap;
  final VoidCallback? onShare;
  final VoidCallback? onDownload;
  final VoidCallback? onSave;

  const AudioSaveCard({
    super.key,
    required this.backgroundImage,
    required this.songName,
    required this.duration,
    required this.artistName,
    required this.tags,
    required this.views,
    this.onPlayPressed,
    this.onShare,
    this.onDownload,
    this.onSave, this.cardTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// ============================ Image + Player Section =========================
        Material(
          borderRadius: BorderRadius.circular(15),
          color: Colors.transparent,
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: cardTap,
            child: Container(
              height: 227,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(backgroundImage), fit: BoxFit.cover),
              ),
              clipBehavior: Clip.hardEdge,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
                child: Material(
                  color: AppColor.bgAuth,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// Visualizer section
                        SizedBox(
                          height: 80,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(backgroundImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                MusicChip(height: 10),
                                MusicChip(height: 20),
                                MusicChip(height: 50),
                                MusicChip(height: 20),
                                MusicChip(height: 10),
                                MusicChip(height: 15),
                                MusicChip(height: 45),
                                MusicChip(height: 65),
                                MusicChip(height: 55),
                                MusicChip(height: 15),
                                MusicChip(height: 35),
                                MusicChip(height: 20),
                                MusicChip(height: 15),
                                MusicChip(height: 7),
                              ],
                            ),
                          ),
                        ),

                        /// Play & duration row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: onPlayPressed,
                              child: Icon(Icons.play_arrow, color: AppColor.button, size: 30),
                            ),
                            Text(duration, style: AppText().bodyExtraSmall),
                          ],
                        ),

                        /// Progress bar (static for now)
                        SizedBox(
                          height: 4,
                          child: Divider(color: AppColor.button, thickness: 3, radius: BorderRadius.circular(4)),
                        ),
                        const SizedBox(height: 3),

                        /// Song title
                        Text(songName, style: AppText().bodyMediumBold, textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        /// ============================ Details Section =========================
        RichText(
          text: TextSpan(
            text: 'Music: ',
            style: AppText().bodyMediumBold.copyWith(fontSize: 12, color: AppColor.appWhite),
            children: [
              TextSpan(
                text: artistName,
                style: AppText().bodyMediumBold.copyWith(fontSize: 12, color: AppColor.appWhite),
              ),
            ],
          ),
        ),

        /// Tags
        Wrap(
          spacing: 8,
          children: tags.map((tag) => HasTag(text: tag)).toList(),
        ),

        const SizedBox(height: 6),

        /// Bottom actions
        Material(
          color: AppColor.appRed,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ExtendView(icon: RIcon.Eye, text: views,),
                ExtendView(icon: RIcon.Share, text: 'Share', onTap: onShare),
                ExtendView(icon: RIcon.Download, text: 'Download', onTap: onDownload),
                ExtendView(icon: Icons.save, text: 'Save', onTap: onSave),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
