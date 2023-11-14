import 'package:flutter/material.dart';

import '../../../core/resources/color_resource.dart';
import '../../../core/resources/strings/string_resource.dart';
import '../../widgets/parent_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            16.0,
            0,
            16.0,
            0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildDescriptionText(),
              _buildLoadingIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDescriptionText() {
    return const Text(
      StringResource.splashDescriptionText,
      style: TextStyle(
        fontSize: 14.0,
        color: ColorResource.white,
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(
        16.0,
        60.0,
        16.0,
        10.0,
      ),
      child: SizedBox(
        height: 24.0,
        width: 24.0,
        child: CircularProgressIndicator(
          strokeWidth: 2.6,
          color: ColorResource.white,
        ),
      ),
    );
  }
}
