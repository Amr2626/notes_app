import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    //debugPrint('Event: $event');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    //debugPrint('Error: $error\nStackTrace: $stackTrace');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('Change: $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    //debugPrint('Transition: $transition');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('Bloc closed: ${bloc.runtimeType}');
    super.onClose(bloc);
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('Bloc created: ${bloc.runtimeType}');
    super.onCreate(bloc);
  }
}

// import 'package:bloc/bloc.dart';
// import 'package:flutter/widgets.dart';

// class SimpleBlocObserver implements BlocObserver {
//   @override
//   void onEvent(Bloc bloc, Object? event) {
//     super.onEvent(bloc, event);
//     // TODO: implement onEvent
//   }

//   @override
//   void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
//     // TODO: implement onError
//     super.onError(bloc, error, stackTrace);
//   }

//   @override
//   void onChange(BlocBase bloc, Change change) {
//     super.onChange(bloc, change);
//     debugPrint('change: $change');
//   }

//   @override
//   void onTransition(Bloc bloc, Transition transition) {
//     super.onTransition(bloc, transition);
//     // TODO: implement onChange
//   }

//   @override
//   void onClose(BlocBase bloc) {
//     // TODO: implement onClose
//   }

//   @override
//   void onCreate(BlocBase bloc) {
//     // TODO: implement onCreate
//   }
// }
