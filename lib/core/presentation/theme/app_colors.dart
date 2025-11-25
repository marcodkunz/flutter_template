import 'package:flutter/material.dart';

final ColorScheme lightColorScheme = const ColorScheme.light().copyWith(
  brightness: Brightness.light,

  // Primary colors
  primary: const Color(0xFF4CAF50),
  onPrimary: const Color(0xFFFFFFFF),
  primaryContainer: const Color(0xFFC8E6C9),
  onPrimaryContainer: const Color(0xFF1B5E20),

  // Secondary colors
  secondary: const Color(0xFF26A69A),
  onSecondary: const Color(0xFFFFFFFF),
  secondaryContainer: const Color(0xFFB2DFDB),
  onSecondaryContainer: const Color(0xFF00695C),

  // Tertiary colors
  tertiary: const Color(0xFF8BC34A),
  onTertiary: const Color(0xFFFFFFFF),
  tertiaryContainer: const Color(0xFFDCEDC8),
  onTertiaryContainer: const Color(0xFF33691E),

  // Error colors
  error: const Color(0xFFD32F2F),
  onError: const Color(0xFFFFFFFF),
  errorContainer: const Color(0xFFFFCDD2),
  onErrorContainer: const Color(0xFFB71C1C),

  // Surface colors
  surface: const Color(0xFFFFFFFF),
  onSurface: const Color(0xFF1A1C1E),
  surfaceContainerHighest: const Color(0xFFE0E0E0),
  onSurfaceVariant: const Color(0xFF424242),

  // Outline and other colors
  outline: const Color(0xFF757575),
  outlineVariant: const Color(0xFFBDBDBD),
  shadow: const Color(0xFF000000),
  scrim: const Color(0xFF000000),
  inverseSurface: const Color(0xFF2E3132),
  onInverseSurface: const Color(0xFFF1F0F4),
  inversePrimary: const Color(0xFF81C784),
);

final ColorScheme darkColorScheme = const ColorScheme.dark().copyWith(
  brightness: Brightness.dark,

  // Primary colors
  primary: const Color(0xFF81C784),
  onPrimary: const Color(0xFF003300),
  primaryContainer: const Color(0xFF2E7D32),
  onPrimaryContainer: const Color(0xFFC8E6C9),

  // Secondary colors
  secondary: const Color(0xFF4DB6AC),
  onSecondary: const Color(0xFF003D3D),
  secondaryContainer: const Color(0xFF00695C),
  onSecondaryContainer: const Color(0xFFB2DFDB),

  // Tertiary colors
  tertiary: const Color(0xFFAED581),
  onTertiary: const Color(0xFF1B3300),
  tertiaryContainer: const Color(0xFF558B2F),
  onTertiaryContainer: const Color(0xFFDCEDC8),

  // Error colors
  error: const Color(0xFFEF5350),
  onError: const Color(0xFF5F0000),
  errorContainer: const Color(0xFFC62828),
  onErrorContainer: const Color(0xFFFFCDD2),

  // Surface colors
  surface: const Color(0xFF1A1C1E),
  onSurface: const Color(0xFFE2E2E5),
  surfaceContainerHighest: const Color(0xFF424242),
  onSurfaceVariant: const Color(0xFFBDBDBD),

  // Outline and other colors
  outline: const Color(0xFF8D9199),
  outlineVariant: const Color(0xFF424242),
  shadow: const Color(0xFF000000),
  scrim: const Color(0xFF000000),
  inverseSurface: const Color(0xFFE2E2E5),
  onInverseSurface: const Color(0xFF2E3132),
  inversePrimary: const Color(0xFF4CAF50),
);
