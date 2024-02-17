import 'index.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignInDelegate delegate = SignInDelegate(
      context: context,
    );
    return SignInView(
      protocol: delegate,
    );
  }
}


class SignInDelegate extends SignInProtocol {
  final BuildContext context;

  SignInDelegate({
    required this.context,
  });

  @override
  void navigateToRecoveryPassword() {}

  @override
  void navigateToContinue() {}
}