import 'index.dart';

class ApplicationBlocObserver extends BlocObserver {
  @override
  void noSuchMethod(Invocation invocation) {
    super.noSuchMethod(invocation);
    print('ApplicationBlocObserver. Such method: $invocation');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('ApplicationBlocObserver. Change: $change');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('ApplicationBlocObserver. Close: $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('ApplicationBlocObserver. Create: $bloc');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('ApplicationBlocObserver. Event: $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('ApplicationBlocObserver. Transition: $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('ApplicationBlocObserver. Error: $error');
  }
}
