import 'index.dart';

part 'components/sign_up_view.welcome_text.part.dart';

class SignUpView extends StatefulWidget {
  final SignUpProtocol _protocol;

  const SignUpView({
    Key? key,
    required SignUpProtocol protocol,
  })  : _protocol = protocol,
        super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                  title: StringResource.signUpPrivacyPolicyButtonTitleText,
                  textStyle: TextStyleResource.green16(
                    weight: FontWeight.w500,
                    height: TextLineHeightResource.text,
                  ),
                  onTap: () {
                    widget._protocol.navigateToPrivacyPolicy();
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
                title: StringResource.signUpContinueButtonTitleText,
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

abstract class SignUpProtocol {
  void navigateToPrivacyPolicy();

  void navigateToContinue();
}
