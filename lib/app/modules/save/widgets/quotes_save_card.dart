import 'package:flutter/material.dart';
import 'package:r_icon_pro/r_icon_pro.dart';

import '../../sound/sounds/widgets/extend_view.dart';
import '../../sound/sounds/widgets/has_tag.dart';

class QuotesSaveCard extends StatelessWidget {
  final String backgroundImage;
  final String duration;
  final String artistName;
  final List<String> tags;
  final String views;
  final VoidCallback? onPlayPressed;
  final VoidCallback? cardTap;
  final VoidCallback? onShare;
  final VoidCallback? onDownload;
  final VoidCallback? onSave;

  const QuotesSaveCard({
    super.key,
    required this.backgroundImage,
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

            ),
          ),
        ),

        const SizedBox(height: 10),


        /// Tags
        Wrap(
          spacing: 8,
          children: tags.map((tag) => HasTag(text: tag)).toList(),
        ),

        const SizedBox(height: 6),

        /// Bottom actions
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ExtendView(icon: RIcon.Eye, text: views,),
            ExtendView(icon: RIcon.Share, text: 'Share', onTap: onShare),
            ExtendView(icon: RIcon.Download, text: 'Download', onTap: onDownload),
            ExtendView(icon: Icons.save, text: 'Save', onTap: onSave),
          ],
        ),
      ],
    );
  }
}
