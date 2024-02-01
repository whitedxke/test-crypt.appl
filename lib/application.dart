import 'index.dart';

class Application extends StatelessWidget {
  Application({Key? key}) : super(key: key);

  final _applicationRouter = ApplicationRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      designSize: const Size(
        375,
        812,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<OnboardingBloc>(
            create: (context) => OnboardingBloc(),
          ),
          BlocProvider<SplashBloc>(
            create: (context) => SplashBloc(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: _applicationRouter.config(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
