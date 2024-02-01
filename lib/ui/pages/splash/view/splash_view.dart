import 'index.dart';

part 'componets/splash_view.brand_identity.part.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    context.read<SplashBloc>().add(StartDelayNavigationEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            _buildBrandIdentityWidget(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  StringResource.splashDescriptionText,
                  style: TextStyleResource.secondary14(
                    weight: FontWeight.w400,
                    height: TextLineHeightResource.description,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    16.w,
                    40.h,
                    16.w,
                    ConstraintsHelper.getBottomWidgetInset(
                      inset: 16.h,
                    ),
                  ),
                  child: SizedBox(
                    height: 24.h,
                    width: 24.w,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.6.w,
                      color: ColorResource.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

abstract class SplashProtocol {}
