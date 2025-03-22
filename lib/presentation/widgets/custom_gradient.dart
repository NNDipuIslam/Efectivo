import 'package:flutter/material.dart';
import 'package:test_for_dot_programmers/core/theme/app_color.dart';

LinearGradient customLinearGradient() {
  return LinearGradient(
    colors: [
      AppColor.primaryGreen,
      AppColor.secondaryTeal,
      AppColor.tertiaryBlue,
    ],
    begin: Alignment.centerRight, // Start from the right
    end: Alignment.centerLeft,
  );
}
