import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../core/application/bloc_logger.dart';
import 'app.dart';
import 'core/application/di/di_core.dart';

Future<void> main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    Bloc.observer = const BlocLogger(verbose: true);

    await initDependencies();
    // to catch flutter sdk framework errors
    FlutterError.onError = (FlutterErrorDetails details) {
      catchUnhandledExceptions(details.exception, details.stack);
    };

    runApp(const App());
  }, catchUnhandledExceptions);
}

void catchUnhandledExceptions(Object error, StackTrace? stack) {
  if (kDebugMode) {
    debugPrintStack(stackTrace: stack, label: error.toString());
  }
}
