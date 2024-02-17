import 'index.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpDelegate delegate = SignUpDelegate(
      context: context,
    );
    return SignUpView(
      protocol: delegate,
    );
  }
}

class SignUpDelegate extends SignUpProtocol {
  final BuildContext context;

  SignUpDelegate({
    required this.context,
  });

  @override
  void navigateToPrivacyPolicy() {}

  @override
  void navigateToContinue() {}
}
