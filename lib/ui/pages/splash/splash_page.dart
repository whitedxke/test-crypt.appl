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
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 0.h,
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
    return Text(
      StringResource.splashDescriptionText,
      style: TextStyle(
        fontSize: 14.sp,
        color: ColorResource.white,
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        16.w,
        60.h,
        16.w,
        10.h,
      ),
      child: SizedBox(
        height: 24.h,
        width: 24.w,
        child: CircularProgressIndicator(
          strokeWidth: 2.6.w,
          color: ColorResource.white,
        ),
      ),
    );
  }
}
