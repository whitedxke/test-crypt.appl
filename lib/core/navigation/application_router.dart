import 'index.dart';

part 'application_router.gr.dart';

@AutoRouterConfig()
class ApplicationRouter extends _$ApplicationRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: OnboardingRoute.page,
        ),
        AutoRoute(
          page: GreetingRoute.page,
        ),
        AutoRoute(
          page: SignUpRoute.page,
        ),
        AutoRoute(
          page: SignInRoute.page,
        ),
      ];
}
