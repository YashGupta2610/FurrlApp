import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  //App Colors
  static Color accentColor = const Color(0xff7E59E7);
  static Color textBlack = const Color(0xff001718);
  static Color textWhite = const Color(0xffFFFFFF);
  static Color background = const Color(0xffF3F5F7);
  static Color grey = const Color(0xff64748B);

  //Text Style Function used for headings.
  static TextStyle heading(Color color) {
    return GoogleFonts.montserrat(
        color: color, fontSize: 16, fontWeight: FontWeight.w600);
  }

  //Text Style Function used for subHeadings.
  static TextStyle subHeading(Color color) {
    return GoogleFonts.montserrat(
        color: color, fontSize: 14, fontWeight: FontWeight.w400);
  }

  //Text Style Function used for body.
  static TextStyle body(Color color) {
    return GoogleFonts.montserrat(
        color: color, fontSize: 12, fontWeight: FontWeight.w400);
  }

  //Button Style used for Primary Buttons
  static final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: textWhite, backgroundColor: accentColor,
    // textStyle: subHeading(textWhite),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
  );

  //Button Style used for Outlined/Secondary Buttons
  static final ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: accentColor,
    backgroundColor: textWhite,
    shape: RoundedRectangleBorder(
        side:
            BorderSide(color: accentColor, width: 1, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(5)),
  );
}
