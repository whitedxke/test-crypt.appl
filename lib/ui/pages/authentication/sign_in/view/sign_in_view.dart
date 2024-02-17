import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  final SignInProtocol _protocol;

  const SignInView({
    Key? key,
    required SignInProtocol protocol,
  }) :  _protocol = protocol,
        super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

abstract class SignInProtocol {
  void navigateToRecoveryPassword();

  void navigateToContinue();
}