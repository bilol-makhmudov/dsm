import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Color(0xFFff87b7),
        secondary: Color(0xFF4f4f4f),
        background: Color(0xFFF4F4F4),
      ),
      fontFamily: 'Optima',
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: Color(0xFF2B2E4A),
          fontWeight: FontWeight.bold,
          fontSize: 36,
        ),
        titleMedium: TextStyle(
          color: Color(0xFF2B2E4A),
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        titleSmall: TextStyle(
          color: Color(0xFF2B2E4A),
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ));
}
