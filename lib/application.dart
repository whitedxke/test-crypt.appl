import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/navigation/application_router.dart';

class Application extends StatelessWidget {
  Application({Key? key}) : super(key: key);

  final _applicationRouter = ApplicationRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      designSize: const Size(
        375,
        812,
      ),
      child: MaterialApp.router(
        routerConfig: _applicationRouter.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
