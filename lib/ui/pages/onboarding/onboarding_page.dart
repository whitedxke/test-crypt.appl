import 'index.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    OnboardingDelegate delegate = OnboardingDelegate(
      context: context,
    );
    return BlocProvider.value(
      value: BlocProvider.of<OnboardingBloc>(context),
      child: OnboardingView(
        protocol: delegate,
      ),
    );
  }
}

class OnboardingDelegate extends OnboardingProtocol {
  final BuildContext context;

  OnboardingDelegate({
    required this.context,
  });

  @override
  void navigateToContinue() {
    context.router.replaceAll(
      [
        const GreetingRoute(),
      ],
    );
  }
}
