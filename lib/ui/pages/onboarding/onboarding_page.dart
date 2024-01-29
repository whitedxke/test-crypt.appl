import 'index.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnboardingDelegate delegate = OnboardingDelegate(
      context: context,
    );
    return OnboardingView(
      protocol: delegate,
    );
  }
}

class OnboardingDelegate extends OnboardingProtocol {
  final BuildContext context;

  OnboardingDelegate({
    required this.context,
  });

  @override
  void skipTheOnboardingPage() {}
}
