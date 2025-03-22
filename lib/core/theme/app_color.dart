import 'package:flutter/material.dart';

class AppColor {
  static Color primaryGreen = Color(0xFF22DA70); // A vibrant green
  static Color secondaryTeal = Color(0xFF22C4AF); // A teal accent
  static Color tertiaryBlue = Color(0xFF22B5DA); // A blue accent
  static Color titleWord =
      Color(0xFF989898); // Correct way to define a color in Flutter
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0xFF22C4AF),
    onPrimary: Color(0xFF2D2D2D),
    onPrimaryContainer: Color(0xFF99000000),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Blue
  Color get blue900 => Color(0xFF0052B4);

  // Blue Gray
  Color get blueGray100 => Color(0xFFD3D3D3);
  Color get blueGray4003f => Color(0x3F898989);
  Color get blueGray40059 => Color(0x59868686);
  Color get blueGray900 => Color(0xFF2E2E2E);

  // Cyan
  Color get cyan400 => Color(0xFF22B5DA);

  // Gray
  Color get gray200 => Color(0xFFF0F0F0);
  Color get gray400 => Color(0xFFC4C4C4);
  Color get gray500 => Color(0xFF979797);
  Color get gray5001 => Color(0xFF909090);
  Color get gray5003f => Color(0x3F949494);
  Color get gray5006b => Color(0x6B939393);
  Color get gray6003f => Color(0x3F6B6B6B);
  Color get gray700 => Color(0xFF666666);
  Color get gray7003f => Color(0x3F565656);

  // Green
  Color get green700 => Color(0xFF0F9D4B);
  Color get greenA400 => Color(0xFF22DA70);

  // Indigo
  Color get indigo600 => Color(0xFF3B5999);
  Color get indigo800 => Color(0xFF283991);
  Color get indigo900 => Color(0xFF273375);

  // Light Blue
  Color get lightBlue500 => Color(0xFF03A9F4);

  // Light Green
  Color get lightGreen500 => Color(0xFF8EC341);

  // Orange
  Color get orangeA200 => Color(0xFFF89A38);

  // Pink
  Color get pinkA200 => Color(0xFFF95078);

  // Red
  Color get red500 => Color(0xFFF44336);
  Color get red700 => Color(0xFFE51D35);
  Color get red800 => Color(0xFFBD2326);
  Color get redA200 => Color(0xFFFF4F4F);

  // Teal
  Color get teal900 => Color(0xFF0B3640);
  Color get tealA700 => Color(0xFF22C4AD);

  // White
  Color get whiteA700 => Color(0xFFFFFFFF);

  // Yellow
  Color get yellowA700 => Color(0xFFFBDE06);
}
