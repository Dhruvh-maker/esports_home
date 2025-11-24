import 'package:flutter/material.dart';

class AppColors {
  static const bg = Color(0xFF0B0B0D);
  static const card = Color(0xFF151516);
  static const accent = Color(0xFFEA1E2C);
}

class AppTheme {
  static ThemeData light() => ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.bg,
    primaryColor: AppColors.accent,
    fontFamily: 'Roboto',
  );

  static ThemeData dark() => light();
}
