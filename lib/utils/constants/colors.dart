import 'package:flutter/material.dart';

class FColors {
  FColors._();

  // App theme colors
  static const Color primary = Color(0xFF0E0E1A);         // Deep navy-black
  static const Color secondary = Color(0xFFD1D1DD);       // Light lavender gray
  static const Color accent = Color(0xFFB4B9FF);          // Soft vibrant blue

  // Text colors
  static const Color textPrimary = Color(0xFF1C1C2B);     // Dark slate (headlines)
  static const Color textSecondary = Color(0xFF747484);   // Mid gray (body)
  static const Color textWhite = Color(0xFFFFFFFF);

  // Gradient colors
  static const Gradient linearGradient = LinearGradient(
    colors: [Color(0xFF0E0E1A), Color(0xFFB4B9FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Background colors
  static const Color light = Color(0xFFF4F4F9);           // Soft lavender gray
  static const Color dark = Color(0xFF1A1927);            // Charcoal black
  static const Color primaryBackground = Color(0xFFF4F4F9);

  // Background Container colors
  static const Color lightContainer = Color(0xFFFFFFFF);
  static Color darkContainer = FColors.white.withOpacity(0.06);

  // Button colors
  static const Color buttonPrimary = Color(0xFF1E1E2E);   // Active dark
  static const Color buttonSecondary = Color(0xFF6D6D80); // Muted gray
  static const Color buttonDisabled = Color(0xFFCFCFD9);

  // Border colors
  static const Color borderPrimary = Color(0xFFE5E5F0);
  static const Color borderSecondary = Color(0xFFF1F1FA);

  // Error and validation colors
  static const Color error = Color(0xFFE53935);
  static const Color success = Color(0xFF43A047);
  static const Color warning = Color(0xFFFFA000);
  static const Color info = Color(0xFF1E88E5);

  // Neutral Shades
  static const Color black = Color(0xFF121212);
  static const Color darkerGrey = Color(0xFF414141);
  static const Color darkGrey = Color(0xFF888888);
  static const Color grey = Color(0xFFDADADA);
  static const Color softGrey = Color(0xFFF2F2F2);
  static const Color lightGrey = Color(0xFFFAFAFA);
  static const Color white = Color(0xFFFFFFFF);
}
