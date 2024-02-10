import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'view/sign_up_view.dart';

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
}
