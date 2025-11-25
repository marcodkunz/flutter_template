import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class BlocLogger extends BlocObserver {
  const BlocLogger({this.verbose = false});

  final bool verbose;

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      print('${bloc.runtimeType} created');
    }
  }

  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode && verbose) {
      // ignore: avoid_print
      print(
        '${bloc.runtimeType} Transition: {${transition.currentState.runtimeType} -> ${transition.nextState.runtimeType}}, Event: ${transition.event.runtimeType}',
      );
    }
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      print('${bloc.runtimeType} closed');
    }
  }
}
