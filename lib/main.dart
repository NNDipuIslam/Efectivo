import 'package:flutter/material.dart';
import 'package:test_for_dot_programmers/core/theme/app_theme.dart';
import 'package:test_for_dot_programmers/presentation/screen_five/screen/screen_five.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Efectivo',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: ScreenFive()
    );
  }
}
