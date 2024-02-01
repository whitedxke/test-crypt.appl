part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoadedState extends OnboardingState {
  final List<Onboarding> onboardings;
  final int currentIndex;
  final int activeDotIndex;

  const OnboardingLoadedState({
    required this.onboardings,
    required this.currentIndex,
    required this.activeDotIndex,
  });

  @override
  List<Object> get props => [
        onboardings,
        currentIndex,
        activeDotIndex,
      ];
}
