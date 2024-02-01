import 'index.dart';

class Onboarding {
  String? image;
  String? description;

  Onboarding({
    this.image,
    this.description,
  });

  void _setImageAndDescription({
    required String? newImage,
    required String? newDescription,
  }) {
    image = newImage;
    description = newDescription;
  }

  String? getImage() {
    return image;
  }

  String? getDescription() {
    return description!;
  }

  static List<Onboarding> _setOnboardingModel() {
    List<Onboarding> onboardings = [];

    Onboarding onboardingOne = Onboarding();
    onboardingOne._setImageAndDescription(
      newImage: ImageResource.bgOnboardingImageOne,
      newDescription: StringResource.onboardingDescriptionTextOne,
    );
    onboardings.add(
      onboardingOne,
    );

    Onboarding onboardingTwo = Onboarding();
    onboardingTwo._setImageAndDescription(
      newImage: ImageResource.bgOnboardingImageTwo,
      newDescription: StringResource.onboardingDescriptionTextTwo,
    );
    onboardings.add(
      onboardingTwo,
    );

    Onboarding onboardingThree = Onboarding();
    onboardingThree._setImageAndDescription(
      newImage: ImageResource.bgOnboardingImageThree,
      newDescription: StringResource.onboardingDescriptionTextThree,
    );
    onboardings.add(
      onboardingThree,
    );

    return onboardings;
  }

  static List<Onboarding> getOnboardingModel() {
    return _setOnboardingModel();
  }
}
