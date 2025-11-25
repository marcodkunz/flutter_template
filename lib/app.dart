import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/application/di/service_locator.dart';
import 'core/application/routing/app_router.dart';
import 'core/presentation/theme/app_colors.dart';
import 'core/presentation/theme/theme.dart';
import 'l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    final appRouter = sl<AppRouter>();

    return MaterialApp.router(
      routerConfig: appRouter.mainRouter,
      theme: getTheme(lightColorScheme),
      darkTheme: getTheme(darkColorScheme),
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
