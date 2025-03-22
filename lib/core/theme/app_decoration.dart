import 'package:flutter/material.dart';
import 'package:test_for_dot_programmers/core/theme/theme_helper.dart';

class AppDecoration {
// Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );

  static BoxDecoration get fillonPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );

  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

//Gradient decorations
  static BoxDecoration get gradientTealAToCyan => BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment(0.94, 0),
        end: Alignment(0.1, 1.14),
        colors: [
          appTheme.tealA700,
          theme.colorScheme.primary,
          appTheme.cyan400
        ],
      ));
// outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
          border: Border.all(
        color: appTheme.blueGray900,
        width: 1,
      ));
  static BoxDecoration get outlineBlueGrayF =>
      BoxDecoration(color: appTheme.whiteA700, boxShadow: [
        BoxShadow(
            color: appTheme.blueGray4003f,
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(
              0,
              1,
            ))
      ]);

  static BoxDecoration get outlineCyan => BoxDecoration();

  static BoxDecoration get outlineCyan400 =>
      BoxDecoration(color: appTheme.blueGray900, boxShadow: [
        BoxShadow(
            color: appTheme.cyan400.withValues(alpha: 0.25),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2)),
      ]);

  static BoxDecoration get outlineCyan4001 =>
      BoxDecoration(color: appTheme.blueGray900, boxShadow: [
        BoxShadow(
            color: appTheme.cyan400.withValues(alpha: 0.25),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1))
      ]);
  static BoxDecoration get outlineCyan4002 =>
      BoxDecoration(color: appTheme.blueGray900, boxShadow: [
        BoxShadow(
            color: appTheme.cyan400.withValues(alpha: 0.25),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1))
      ]);
  static BoxDecoration get outlineCyan4003 =>
      BoxDecoration(color: appTheme.blueGray900, boxShadow: [
        BoxShadow(
            color: appTheme.cyan400.withValues(alpha: 0.25),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1))
      ]);
  static BoxDecoration get outlineGrayF =>
      BoxDecoration(color: appTheme.whiteA700, boxShadow: [
        BoxShadow(
            color: appTheme.gray5003f.withValues(alpha: 0.25),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 4))
      ]);
  static BoxDecoration get outlineWhiteA =>
      BoxDecoration(border: Border.all(color: appTheme.whiteA700, width: 1));
}

class BorderRadiusStyle {
  static BorderRadius get circleBorder18 => BorderRadius.circular(18);
  static BorderRadius get circleBorder10 => BorderRadius.circular(10);
  static BorderRadius get circleBorder28 => BorderRadius.circular(28);
}
