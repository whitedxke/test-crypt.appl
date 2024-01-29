import 'index.dart';

class ConstraintsHelper {
  static const heightScaleLimit = 600;
  static const heightLineLimit = 1000;

  static final windowPadding =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).padding.h;

  static double getBottomWidgetInset({
    required double inset,
  }) {
    final windowBottomInset = windowPadding.bottom.h;
    if (inset > windowBottomInset) {
      return (inset - windowBottomInset).h;
    } else {
      return 0.h;
    }
  }
}
