import 'package:flutter/material.dart';

import '../../core/resources/color_resource.dart';

class ParentWidget extends StatelessWidget {
  final Widget _body;

  const ParentWidget({
    Key? key,
    required Widget body,
  })  : _body = body,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.black,
      body: SafeArea(
        child: _body,
      ),
    );
  }
}
