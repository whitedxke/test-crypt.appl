import 'index.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    on<LoadOnboardingEvent>((event, emit) {
      _calculateLoadOnboardingEvent(
        emit: emit,
      );
    });
    on<ChangePageEvent>((event, emit) {
      _calculateChangePageEvent(
        emit: emit,
        newIndex: event.newIndex,
      );
    });
  }

  void _calculateLoadOnboardingEvent({
    required Emitter<OnboardingState> emit,
  }) {
    final onboardings = Onboarding.getOnboardingModel();
    emit(OnboardingLoadedState(
      onboardings: onboardings,
      currentIndex: 0,
      activeDotIndex: 0,
    ));
  }

  void _calculateChangePageEvent({
    required Emitter<OnboardingState> emit,
    required int newIndex,
  }) {
    final currentState = state;
    if (currentState is OnboardingLoadedState) {
      emit(OnboardingLoadedState(
        onboardings: currentState.onboardings,
        currentIndex: newIndex,
        activeDotIndex: newIndex,
      ));
    }
  }
}
