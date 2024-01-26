import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_color/app_color.dart';

class TextStyles {
  static final TextStyle montserratFont = GoogleFonts.montserrat(
    fontSize: 12,
  );

  static final TextStyle interFont = GoogleFonts.inter(
    fontSize: 12,
  );
  static final TextStyle interFont20W600White = GoogleFonts.inter(
    color: AppColor.whiteColor.withOpacity(1),
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle interFont14W400White = GoogleFonts.inter(
    color: AppColor.whiteColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle interFont16W500White = GoogleFonts.inter(
    color: AppColor.whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle interFont26W700White = GoogleFonts.inter(
    color: AppColor.whiteColor,
    fontSize: 26,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle interFont10W400White = GoogleFonts.inter(
    color: AppColor.whiteColor,
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );
}
