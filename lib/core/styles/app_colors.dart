import 'package:flutter/material.dart';

class AppColors {
  static const gridColors = _GridColors();

  static Color primaryPurple = const Color(0xFFA94CE1);
  static Color secondaryPurple = const Color(0xFFC884E4);
  static Color blackBackground = const Color(0xFF555555);
  static Color accentPurple = const Color(0xFFF2B4FD);
  static Color supportPurple = const Color(0xFFBA68C8);
  static Color appPurple = const Color(0xFF6A1B9A);
  static Color primaryGray = const Color(0xFFE4E4E4);
}

class _GridColors {
  const _GridColors();
  Color get xlColor => const Color(0xFFAF04FF);
  Color get lColor => const Color(0xFFD479FB);
  Color get mColor => const Color(0xFFF1A1FF);
  Color get sColor => const Color(0xFFF8D0FF);
}
