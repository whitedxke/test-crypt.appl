import 'package:flutter/material.dart';

class RecoveryView extends StatefulWidget {
  final RecoveryProtocol _protocol;

  const RecoveryView({
    Key? key,
    required RecoveryProtocol protocol,
  }) :  _protocol = protocol,
        super(key: key);

  @override
  State<RecoveryView> createState() => _RecoveryViewState();
}

class _RecoveryViewState extends State<RecoveryView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

abstract class RecoveryProtocol {
  void navigateToContinue();
}
