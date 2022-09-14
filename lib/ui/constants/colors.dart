import 'package:flutter/material.dart';

abstract class PhysivoiceColors {
  static const Color primaryColor = Color(0xFF5059CF);
  static const Color secondaryColor = Color(0xFF464646);
  static const Color tertiaryColor = Color(0xFF333CB9);
  static const Color hintColor = Color(0xFFADAEB7);

  // random colors
  static const Color gradientCandidate1 = Color(0xFF8B90C4);
  static const Color gradientCandidate2 = Color(0xFF5B46BA);

  static MaterialColor primaryMaterialColor =
      MaterialColor(primaryColor.value, const {
    50: Color.fromRGBO(80, 89, 207, .1),
    100: Color.fromRGBO(80, 89, 207, .2),
    200: Color.fromRGBO(80, 89, 207, .3),
    300: Color.fromRGBO(80, 89, 207, .4),
    400: Color.fromRGBO(80, 89, 207, .5),
    500: Color.fromRGBO(80, 89, 207, .6),
    600: Color.fromRGBO(80, 89, 207, .7),
    700: Color.fromRGBO(80, 89, 207, .8),
    800: Color.fromRGBO(80, 89, 207, .9),
    900: Color.fromRGBO(80, 89, 207, 1),
  });
}
