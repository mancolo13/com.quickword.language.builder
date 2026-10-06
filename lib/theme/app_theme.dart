import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFFF4081);
  static const Color secondary = Color(0xFF00E5FF);
  static const Color background = Color(0xFF180A16);
  static const Color surface = Color(0xFF241020);
  static const Color card = Color(0xFF30162C);
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Colors.white70;

  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: background,
        colorScheme: const ColorScheme.dark(
          primary: primary,
          secondary: secondary,
          surface: surface,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: surface,
          indicatorColor: primary.withOpacity(0.25),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: textSecondary),
          ),
        ),
      );
}
