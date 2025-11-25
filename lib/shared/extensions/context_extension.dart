import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  // This creates a shorter accessor for AppLocalizations
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
