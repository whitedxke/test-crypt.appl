import 'package:flutter/material.dart';

import '../../../../widgets/other/parent_widget.dart';

class SignUpView extends StatelessWidget {
  final SignUpProtocol _protocol;

  const SignUpView({
    Key? key,
    required SignUpProtocol protocol,
  }) :  _protocol = protocol,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      body: Container(),
    );
  }
}


abstract class SignUpProtocol {}