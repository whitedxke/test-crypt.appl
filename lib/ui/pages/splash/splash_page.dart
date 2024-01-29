import 'index.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    SplashDelegate delegate = SplashDelegate(
      context: context,
    );
    return BlocProvider.value(
      value: BlocProvider.of<SplashBloc>(context),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is NavigateToOnboardingState) {
            delegate.navigateToOnboardingPage();
          }
        },
        child: const SplashView(),
      ),
    );
  }
}

class SplashDelegate implements SplashProtocol {
  final BuildContext context;

  const SplashDelegate({
    required this.context,
  });

  void navigateToOnboardingPage() {
    context.router.pushAndPopUntil(
      const OnboardingRoute(),
      predicate: (context) => true,
    );
  }
}
