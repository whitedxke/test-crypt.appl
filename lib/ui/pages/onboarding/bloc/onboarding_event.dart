part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class LoadOnboardingEvent extends OnboardingEvent {}

class ChangePageEvent extends OnboardingEvent {
  final int newIndex;

  const ChangePageEvent({
    required this.newIndex,
  });

  @override
  List<Object> get props => [
        newIndex,
      ];
}
