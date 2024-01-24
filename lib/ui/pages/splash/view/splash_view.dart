import 'index.dart';

part 'splash_view.description_text.part.dart';
part 'splash_view.loading_indicator.part.dart';

class SplashView extends StatefulWidget {
  final SplashViewProtocol _delegate;

  const SplashView({
    Key? key,
    required SplashViewProtocol delegate,
  })  : _delegate = delegate,
        super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    context.read<SplashBloc>().add(StartDelayNavigationEvent());

    super.initState();
  }

  @override
  void dispose() {
    context.read<SplashBloc>().close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final delegate = widget._delegate;
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is NavigateToOnboardingState) {
          delegate.navigateToOnboardingPage();
        }
      },
      child: ParentWidget(
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
      ),
    );
  }
}

abstract class SplashViewProtocol {
  void navigateToOnboardingPage();
}
