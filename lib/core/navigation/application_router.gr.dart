// GENERATED CODE - DO NOT MODIFY BY HAND.

// AutoRouterGenerator.

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'application_router.dart';

abstract class _$ApplicationRouter extends RootStackRouter {
  // ignore: unused_element
  _$ApplicationRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    GreetingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GreetingPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for:
/// [GreetingPage].
class GreetingRoute extends PageRouteInfo<void> {
  const GreetingRoute({List<PageRouteInfo>? children})
      : super(
          GreetingRoute.name,
          initialChildren: children,
        );

  static const String name = 'GreetingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for:
/// [OnboardingPage].
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for:
/// [SignUpPage].
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for:
/// [SplashPage].
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
