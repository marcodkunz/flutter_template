import 'package:flutter/material.dart';

final ColorScheme lightColorScheme = const ColorScheme.light().copyWith(
  brightness: Brightness.light,

  // Primary colors (Grass Green)
  primary: Color(0xFF4CAF50),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFC8E6C9),
  onPrimaryContainer: Color(0xFF1B5E20),

  // Secondary colors (Complementary teal)
  secondary: Color(0xFF26A69A),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFB2DFDB),
  onSecondaryContainer: Color(0xFF00695C),

  // Tertiary colors (Warm accent)
  tertiary: Color(0xFF8BC34A),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFDCEDC8),
  onTertiaryContainer: Color(0xFF33691E),

  // Error colors
  error: Color(0xFFD32F2F),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFCDD2),
  onErrorContainer: Color(0xFFB71C1C),

  // Surface colors
  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF1A1C1E),
  surfaceContainerHighest: Color(0xFFE0E0E0),
  onSurfaceVariant: Color(0xFF424242),

  // Outline and other colors
  outline: Color(0xFF757575),
  outlineVariant: Color(0xFFBDBDBD),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
  inverseSurface: Color(0xFF2E3132),
  onInverseSurface: Color(0xFFF1F0F4),
  inversePrimary: Color(0xFF81C784),
);

final ColorScheme darkColorScheme = const ColorScheme.dark().copyWith(
  brightness: Brightness.dark,

  // Primary colors (Grass Green - lighter for dark mode)
  primary: Color(0xFF81C784),
  onPrimary: Color(0xFF003300),
  primaryContainer: Color(0xFF2E7D32),
  onPrimaryContainer: Color(0xFFC8E6C9),

  // Secondary colors (Complementary teal)
  secondary: Color(0xFF4DB6AC),
  onSecondary: Color(0xFF003D3D),
  secondaryContainer: Color(0xFF00695C),
  onSecondaryContainer: Color(0xFFB2DFDB),

  // Tertiary colors (Warm accent)
  tertiary: Color(0xFFAED581),
  onTertiary: Color(0xFF1B3300),
  tertiaryContainer: Color(0xFF558B2F),
  onTertiaryContainer: Color(0xFFDCEDC8),

  // Error colors
  error: Color(0xFFEF5350),
  onError: Color(0xFF5F0000),
  errorContainer: Color(0xFFC62828),
  onErrorContainer: Color(0xFFFFCDD2),

  // Surface colors
  surface: Color(0xFF1A1C1E),
  onSurface: Color(0xFFE2E2E5),
  surfaceContainerHighest: Color(0xFF424242),
  onSurfaceVariant: Color(0xFFBDBDBD),

  // Outline and other colors
  outline: Color(0xFF8D9199),
  outlineVariant: Color(0xFF424242),
  shadow: Color(0xFF000000),
  scrim: Color(0xFF000000),
  inverseSurface: Color(0xFFE2E2E5),
  onInverseSurface: Color(0xFF2E3132),
  inversePrimary: Color(0xFF4CAF50),
);
