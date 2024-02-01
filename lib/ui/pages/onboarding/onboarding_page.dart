import 'index.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

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
