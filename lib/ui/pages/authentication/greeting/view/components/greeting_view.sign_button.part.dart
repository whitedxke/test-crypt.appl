part of '../greeting_view.dart';

Widget _buildSignButtonWidget({
  required VoidCallback onTap,
}) {
  return Padding(
    padding: EdgeInsets.only(
      top: 8.h,
    ),
    child: Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: StringResource.greetinQuestionText,
          style: TextStyleResource.secondary14(
            weight: FontWeight.w500,
            height: TextLineHeightResource.text,
          ),
          children: <TextSpan>[
            TextSpan(
              text: StringResource.greetingSignInButtonTitleText,
              style: TextStyleResource.green16(
                weight: FontWeight.w500,
                height: TextLineHeightResource.text,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    ),
  );
}
