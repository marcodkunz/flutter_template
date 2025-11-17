import 'package:flutter/material.dart';
import 'package:flutter_template/core/presentation/theme/values_manager.dart';

ThemeData getTheme(ColorScheme colorScheme) => ThemeData(
  useMaterial3: true,
  colorScheme: colorScheme,
  scaffoldBackgroundColor: colorScheme.primary,
  splashColor: colorScheme.onSecondary.withAlpha(AppAlpha.a30),
  bottomAppBarTheme: BottomAppBarThemeData(color: colorScheme.secondary, surfaceTintColor: colorScheme.secondary),
  appBarTheme: AppBarTheme(
    centerTitle: false,
    surfaceTintColor: colorScheme.primary,
    backgroundColor: colorScheme.primary,
    // no shadow
    iconTheme: IconThemeData(color: colorScheme.onPrimary),
  ),
  dividerTheme: DividerThemeData(thickness: 1, color: colorScheme.onTertiary),
  // // Text theme
  listTileTheme: ListTileThemeData(
    textColor: colorScheme.onPrimary,
    iconColor: colorScheme.onPrimary,
    tileColor: colorScheme.primary,
  ),
  popupMenuTheme: PopupMenuThemeData(color: colorScheme.primary, iconColor: Colors.white),
  progressIndicatorTheme: ProgressIndicatorThemeData(color: colorScheme.onPrimary),
  // For buttons with text and icon
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll<Color>(colorScheme.secondaryContainer),
      backgroundColor: WidgetStatePropertyAll<Color>(colorScheme.onPrimary),
      overlayColor: WidgetStatePropertyAll<Color>(colorScheme.onSecondary.withAlpha(AppAlpha.a30)),
      shape: const WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
    ),
  ),
  // For buttons with text only
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll<Color>(colorScheme.onPrimary),
      backgroundColor: WidgetStatePropertyAll<Color>(colorScheme.secondaryContainer),
      overlayColor: WidgetStatePropertyAll<Color>(colorScheme.onSecondary.withAlpha(AppAlpha.a30)),
      shape: const WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
    ),
  ),
  // For "secondary" buttons
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(colorScheme.onSecondary),
      backgroundColor: WidgetStatePropertyAll(colorScheme.secondary),
      overlayColor: WidgetStatePropertyAll<Color>(colorScheme.onSecondary.withAlpha(AppAlpha.a30)),
      side: WidgetStatePropertyAll<BorderSide>(BorderSide(color: colorScheme.onSecondary)),
      shape: const WidgetStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
    ),
  ),
);
