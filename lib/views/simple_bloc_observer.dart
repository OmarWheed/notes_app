import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stacktrace) {
    debugPrint("change = $stacktrace");
    super.onError(bloc, error, stacktrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint("change = $change");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint("transition = $transition");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("create = $bloc");
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);

    debugPrint("close = $bloc");
  }
}
