import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import '../../../features/home/application/ticker.dart';
import '../../../features/home/application/timer_bloc.dart';
import '../../../features/profile/application/counter_cubit.dart';
import '../../../features/startup/application/splash_bloc.dart';
import '../routing/app_router.dart';

Future<void> initDependencies() async {
  /// We need to add a try catch bloc because this can be called twice, when the scope is already registered the SL will
  /// thrown an error. This can happen when the app is in background but not yet terminated.
  try {
    await initCore();
    await initBlocs();
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }
}

Future<void> initCore() async {
  final sl = GetIt.instance;

  await sl.pushNewScopeAsync(
    scopeName: 'SLCore',
    init: (scope) async {
      if (!sl.isRegistered<AppRouter>()) {
        sl.registerSingleton<AppRouter>(AppRouter());
      }
    },
  );
}

Future<void> initBlocs() async {
  final sl = GetIt.instance;

  await sl.pushNewScopeAsync(
    scopeName: 'SLBlocs',
    init: (scope) async {
      if (!sl.isRegistered<SplashBloc>()) {
        sl.registerFactory<SplashBloc>(() => SplashBloc(appRouter: sl<AppRouter>()));
      }

      if (!sl.isRegistered<TimerBloc>()) {
        sl.registerFactory<TimerBloc>(() => TimerBloc(ticker: const Ticker()));
      }

      if (!sl.isRegistered<CounterCubit>()) {
        sl.registerFactory<CounterCubit>(() => CounterCubit());
      }
    },
  );
}
