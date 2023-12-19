import 'package:flutter/material.dart';

import 'core/navigation/application_router.dart';

class Application extends StatelessWidget {
  Application({Key? key}) : super(key: key);

  final _applicationRouter = ApplicationRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _applicationRouter.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
