import 'index.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _startDelayNavigation();

    super.initState();
  }

  void _startDelayNavigation() {
    const delay = Duration(seconds: 4);
    Future.delayed(
      delay,
      _navigateToOnboardingPage,
    );
  }

  void _navigateToOnboardingPage() {
    context.router.pushAndPopUntil(
      const OnboardingRoute(),
      predicate: (context) => true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            16.0,
            0,
            16.0,
            0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildDescriptionText(),
              _buildLoadingIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDescriptionText() {
    return const Text(
      StringResource.splashDescriptionText,
      style: TextStyle(
        fontSize: 14.0,
        color: ColorResource.white,
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(
        16.0,
        60.0,
        16.0,
        10.0,
      ),
      child: SizedBox(
        height: 24.0,
        width: 24.0,
        child: CircularProgressIndicator(
          strokeWidth: 2.6,
          color: ColorResource.white,
        ),
      ),
    );
  }
}
