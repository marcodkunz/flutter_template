import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/application/routing/app_router.dart';
import '../../../core/application/routing/page.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({required AppRouter appRouter})
    : _appRouter = appRouter,
      super(SplashInitial()) {
    on<SplashCheck>(_onCheck);
  }

  final AppRouter _appRouter;

  FutureOr<void> _onCheck(SplashCheck event, Emitter<SplashState> emit) async {
    emit(SplashLoading());

    // TODO: make startup checks
    await Future.delayed(const Duration(seconds: 2));

    _appRouter.go(Pages.home.navigationPath);
  }
}
