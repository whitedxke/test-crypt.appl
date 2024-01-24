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
    return BlocProvider.value(
      value: BlocProvider.of<SplashBloc>(context),
      child: SplashView(
        delegate: SplashPageDelegate(
          context: context,
        ),
      ),
    );
  }
}

class SplashPageDelegate implements SplashViewProtocol {
  final BuildContext context;

  const SplashPageDelegate({
    required this.context,
  });

  @override
  void navigateToOnboardingPage() {
    context.router.pushAndPopUntil(
      const OnboardingRoute(),
      predicate: (context) => true,
    );
  }
}
