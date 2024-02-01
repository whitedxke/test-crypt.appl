import 'index.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<StartDelayNavigationEvent>((event, emit) async {
      await _calculateStartDelayNavigationEvent(emit: emit);
    });
  }

  Future<void> _calculateStartDelayNavigationEvent({
    required Emitter<SplashState> emit,
  }) async {
    await Future.delayed(const Duration(seconds: 4));
    emit(NavigateToOnboardingState());
  }
}
