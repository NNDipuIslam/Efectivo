import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_for_dot_programmers/core/theme/app_color.dart';
import 'package:test_for_dot_programmers/core/utils/pref_utils.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable
class ThemeHelper {
// The current app theme
  var _appTheme = PrefUtils().getThemeData();
// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustonColor = {
    'lightCode': LightCodeColors()
  };
// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };
// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustonColor[_appTheme] ?? LightCodeColors();
  }

// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
        visualDensity: VisualDensity.standard,
        colorScheme: colorScheme,
        textTheme: TextThemes.textTheme(colorScheme),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          shadowColor: appTheme.gray5006b,
          elevation: 5,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        )),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: BorderSide(
              color: appTheme.whiteA700,
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            visualDensity: const VisualDensity(
              vertical: -4,
              horizontal: -4,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
        dividerTheme: DividerThemeData(
          thickness: 6,
          space: 6,
          color: appTheme.red800,
        ));
  }

  LightCodeColors themeColor() => _getThemeColors();
  ThemeData themeData() => _getThemeData();
}

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700.withValues(alpha: 0.85),
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray500,
          fontSize: 13,
          fontWeight: FontWeight.w400, // Fixed fontHeight issue
        ),
        bodySmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 8,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 36,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.cyan400,
          fontSize: 12,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray5001,
          fontSize: 10,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        labelSmall: TextStyle(
          color: appTheme.cyan400,
          fontSize: 8,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
        ),
        titleLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 22,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray500,
          fontSize: 18,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray500,
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
      );
}
