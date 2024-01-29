import 'index.dart';

class OnboardingView extends StatefulWidget {
  final OnboardingProtocol _protocol;

  const OnboardingView({
    Key? key,
    required OnboardingProtocol protocol,
  })  : _protocol = protocol,
        super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      body: Container(),
    );
  }
}

abstract class OnboardingProtocol {
  void skipTheOnboardingPage();
}
