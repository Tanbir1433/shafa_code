import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_color_config.dart';

class AppText {
  TextStyle bodyMedium = GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: AppColor.button);
  TextStyle bodyMediumBold = GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.button);
  TextStyle bodyExtraSmall = GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.button);
}
