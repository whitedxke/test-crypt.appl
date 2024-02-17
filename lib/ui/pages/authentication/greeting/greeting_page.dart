import 'index.dart';

@RoutePage()
class GreetingPage extends StatelessWidget {
  const GreetingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GreetingDelegate delegate = GreetingDelegate(
      context: context,
    );
    return GreetingView(
      protocol: delegate,
    );
  }
}

class GreetingDelegate extends GreetingProtocol {
  final BuildContext context;

  GreetingDelegate({
    required this.context,
  });

  @override
  void navigateToSignUp() {
    context.router.push(
      const SignUpRoute(),
    );
  }

  @override
  void navigateToSignIn() {}
}
