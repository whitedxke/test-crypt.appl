import 'index.dart';

part 'components/recovery_view.welcome_text.part.dart';

class RecoveryView extends StatefulWidget {
  final RecoveryProtocol _protocol;

  const RecoveryView({
    Key? key,
    required RecoveryProtocol protocol,
  }) :  _protocol = protocol,
        super(key: key);

  @override
  State<RecoveryView> createState() => _RecoveryViewState();
}

class _RecoveryViewState extends State<RecoveryView> {
  final TextEditingController _mailController = TextEditingController();
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
                child: TextFieldWidget(
                  controller: _mailController,
                  labelText: StringResource.recoveryEmailLabelText,
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
                title: StringResource.recoveryContinueButtonTitleText,
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

abstract class RecoveryProtocol {
  void navigateToContinue();
}
