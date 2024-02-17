import 'index.dart';

part 'components/sign_in_view.welcome_text.part.dart';

class SignInView extends StatefulWidget {
  final SignInProtocol _protocol;

  const SignInView({
    Key? key,
    required SignInProtocol protocol,
  }) :  _protocol = protocol,
        super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _wordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ParentWidget(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 32.h,
                  horizontal: 16.w,
                ),
                child: const BrandIdentityWidget(
                  isAxisAligned: true,
                ),
              ),
              _buildWelcomeTextWidget(),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 32.h,
                  horizontal: 16.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldWidget(
                      controller: _mailController,
                      labelText: StringResource.signUpEmailLabelText,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    TextFieldWidget(
                      controller: _wordController,
                      obscureText: true,
                      labelText: StringResource.signUpPasswordLabelText,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 18.h,
                  horizontal: 16.w,
                ),
                child: TextButtonWidget(
                  title: StringResource.signInRecoveryPasswordButtonTitleText,
                  textStyle: TextStyleResource.green16(
                    weight: FontWeight.w500,
                    height: TextLineHeightResource.text,
                  ),
                  onTap: () {
                    widget._protocol.navigateToRecoveryPassword();
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 40.w,
                top: 40.h,
                right: 40.w,
                bottom: ConstraintsHelper.getBottomWidgetInset(
                  inset: 16.h,
                ),
              ),
              child: MaterialButtonWidget(
                title: StringResource.signInContinueButtonTitleText,
                onTap: () {
                  widget._protocol.navigateToContinue();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

abstract class SignInProtocol {
  void navigateToRecoveryPassword();

  void navigateToContinue();
}
