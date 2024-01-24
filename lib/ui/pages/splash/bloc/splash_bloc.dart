import 'index.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<StartDelayNavigationEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 4), () {
        emit(NavigateToOnboardingState());
      });
    });
  }
}
