import 'index.dart';

class OnboardingRepository {
  static final OnboardingRepository _instance =
      OnboardingRepository._internal();

  OnboardingRepository._internal();

  factory OnboardingRepository.getInstance() {
    return _instance;
  }

  List<Onboarding> _setOnboardingModel() {
    List<Onboarding> onboardings = [];

    Onboarding onboardingOne = Onboarding();
    onboardingOne.image = ImageResource.bgOnboardingImageOne;
    onboardingOne.description = StringResource.onboardingDescriptionTextOne;
    onboardings.add(
      onboardingOne,
    );

    Onboarding onboardingTwo = Onboarding();
    onboardingTwo.image = ImageResource.bgOnboardingImageTwo;
    onboardingTwo.description = StringResource.onboardingDescriptionTextTwo;
    onboardings.add(
      onboardingTwo,
    );

    Onboarding onboardingThree = Onboarding();
    onboardingThree.image = ImageResource.bgOnboardingImageThree;
    onboardingThree.description = StringResource.onboardingDescriptionTextThree;
    onboardings.add(
      onboardingThree,
    );

    return onboardings;
  }

  List<Onboarding> getOnboardingModel() {
    return _setOnboardingModel();
  }
}
