import 'package:flutter/material.dart';

class AppColors {
  // ─────────────────────────────────────────────────────────────
  // Neutral (Light)
  // ─────────────────────────────────────────────────────────────
  static const background = Color(0xFFFFFFFF);
  static const surface = Color(0xFFF9F7F7);
  static const divider = Color(0xFFE5E5E5);
  static const textPrimary = Color(0xFF1A1A1A);
  static const warning = Color(0xFF5F5F5F);

  // ─────────────────────────────────────────────────────────────
  // Primary (Maroon)
  // ─────────────────────────────────────────────────────────────
  static const primary = Color(0xFF62181C);
  static const primarySoft = Color(0xFFAF0E0A);
  static const primaryDark = Color(0xFF4C0E0F);

  // ─────────────────────────────────────────────────────────────
  // Secondary (Yellow)
  // ─────────────────────────────────────────────────────────────
  static const secondary = Color(0xFFFFE062);
  static const secondarySoft = Color(0xFFFFF3BF);
  static const secondaryDark = Color(0xFFE6C44F);

  // ─────────────────────────────────────────────────────────────
  // Dark mode
  // ─────────────────────────────────────────────────────────────
  static const darkBackground = Color(0xFF121212);
  static const darkSurface = Color(0xFF1E1E1E);
  static const darkPrimary = Color(0xFFD02E34);
  static const darkText = Color(0xFFFFFFFF);
  static const darkTextSecondary = Color(0xFFB3B3B3);
}

/// LIGHT COLOR SCHEME
final ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,

  primary: AppColors.primary,
  onPrimary: Colors.white,

  primaryContainer: AppColors.primarySoft,
  onPrimaryContainer: Colors.white,

  secondary: AppColors.secondary,
  onSecondary: AppColors.textPrimary,

  secondaryContainer: AppColors.secondarySoft,
  onSecondaryContainer: AppColors.textPrimary,

  outline: AppColors.divider,
  outlineVariant: AppColors.divider,

  background: AppColors.background,
  onBackground: AppColors.textPrimary,

  surface: AppColors.surface,
  onSurface: AppColors.textPrimary,

  surfaceVariant: AppColors.divider,
  onSurfaceVariant: AppColors.warning,

  error: Colors.red,
  onError: Colors.white,
);

/// DARK COLOR SCHEME
final ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,

  primary: AppColors.darkPrimary,
  onPrimary: Colors.white,

  primaryContainer: AppColors.primaryDark,
  onPrimaryContainer: Colors.white,

  secondary: AppColors.secondary,
  onSecondary: Colors.black,

  secondaryContainer: AppColors.secondaryDark,
  onSecondaryContainer: Colors.black,

  background: AppColors.darkBackground,
  onBackground: AppColors.darkText,

  surface: AppColors.darkSurface,
  onSurface: AppColors.darkText,

  surfaceVariant: AppColors.darkSurface,
  onSurfaceVariant: AppColors.darkTextSecondary,

  error: Colors.red,
  onError: Colors.white,
);
