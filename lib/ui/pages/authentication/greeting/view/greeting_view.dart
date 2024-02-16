import 'index.dart';

part 'components/greeting_view.sign_button.part.dart';
part 'components/greeting_view.welcome_text.part.dart';

class GreetingView extends StatelessWidget {
  final GreetingProtocol _protocol;

  const GreetingView({
    Key? key,
    required GreetingProtocol protocol,
  })  : _protocol = protocol,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const BrandIdentityWidget(),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                top: 0.w,
                right: 16.w,
                bottom: ConstraintsHelper.getBottomWidgetInset(
                  inset: 16.h,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildWelcomeTextWidget(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      top: 40.h,
                      right: 16.w,
                    ),
                    child: MaterialButtonWidget(
                      title: StringResource.greetingSignUpButtonTitleText,
                      onTap: () {
                        _protocol.navigateToSignUp();
                      },
                    ),
                  ),
                  _buildSignButtonWidget(
                    onTap: () {
                      _protocol.navigateToSignIn();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

abstract class GreetingProtocol {
  void navigateToSignUp();

  void navigateToSignIn();
}
