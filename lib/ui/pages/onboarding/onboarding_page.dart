import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../widgets/parent_widget.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      body: Container(),
    );
  }
}
