import 'package:flutter/material.dart';

import '../../../../core/navigation/index.dart';
import '../../../widgets/other/parent_widget.dart';

@RoutePage()
class GreetingPage extends StatelessWidget {
  const GreetingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      body: Container(),
    );
  }
}
