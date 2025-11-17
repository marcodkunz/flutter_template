import 'dart:ui';

import 'package:flutter/widget_previews.dart';

import '../../../core/presentation/theme/app_colors.dart';
import '../../../core/presentation/theme/theme.dart';

/// Creates light and dark mode previews.
final class MultiBrightnessPreview extends MultiPreview {
  const MultiBrightnessPreview({this.size});

  final Size? size;

  @override
  List<Preview> get previews => [
    Preview(
      group: 'Brightness',
      name: 'light',
      brightness: Brightness.light,
      theme: () => PreviewThemeData(materialLight: getTheme(lightColorScheme)),
      size: size,
    ),
    Preview(
      group: 'Brightness',
      name: 'dark',
      brightness: Brightness.dark,
      theme: () => PreviewThemeData(materialDark: getTheme(darkColorScheme)),
      size: size,
    ),
  ];
}
