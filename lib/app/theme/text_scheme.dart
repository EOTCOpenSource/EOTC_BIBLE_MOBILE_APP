import 'package:flutter/material.dart';

class AppTextStyles {
  // ─────────────────────────────────────────────────────────────
  // English / Latin
  // ─────────────────────────────────────────────────────────────

  static const TextStyle label = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle h1 = TextStyle(
    fontFamily: 'Coolvetica',
    fontSize: 32,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: 'Coolvetica',
    fontSize: 26,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle h3 = TextStyle(
    fontFamily: 'Coolvetica',
    fontSize: 22,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.3,
  );

  static const TextStyle h4 = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle small = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  // ─────────────────────────────────────────────────────────────
  // Amharic (Ethiopic)
  // ─────────────────────────────────────────────────────────────
  static const TextStyle amhH1 = TextStyle(
    fontFamily: 'NotoSerifEthiopic',
    fontSize: 32,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.3,
    height: 0.91,
  );

  static const TextStyle amhH2 = TextStyle(
    fontFamily: 'NotoSansEthiopic',
    fontSize: 26,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.3,
    height: 1.15,
  );

  static const TextStyle amhH3 = TextStyle(
    fontFamily: 'NotoSansEthiopic',
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.3,
    height: 1.06,
  );

  static const TextStyle amhBody = TextStyle(
    fontFamily: 'NotoSansEthiopic',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.37,
  );
}

/// Flutter TextTheme mapping
final TextTheme appTextTheme = const TextTheme(
  displayLarge: AppTextStyles.h1,
  displayMedium: AppTextStyles.h2,
  displaySmall: AppTextStyles.h3,
  headlineMedium: AppTextStyles.h4,
  titleMedium: AppTextStyles.subtitle,
  bodyLarge: AppTextStyles.body,
  bodySmall: AppTextStyles.small,
  labelLarge: AppTextStyles.label,
);
