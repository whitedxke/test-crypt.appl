import 'index.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void _navigateToOnboardingPage() {
    context.router.pushAndPopUntil(
      const OnboardingRoute(),
      predicate: (context) => true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<SplashBloc>(context),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is NavigateToOnboardingState) {
            _navigateToOnboardingPage();
          }
        },
        child: const SplashView(),
      ),
    );
  }
}
