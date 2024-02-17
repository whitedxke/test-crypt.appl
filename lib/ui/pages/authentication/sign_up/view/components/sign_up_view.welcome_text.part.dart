part of '../sign_up_view.dart';

Widget _buildWelcomeTextWidget() {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 32.h,
      horizontal: 16.w,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringResource.signUpTitleText,
          style: TextStyleResource.secondary24(
            weight: FontWeight.w500,
            height: TextLineHeightResource.header,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 6.h,
          ),
          child: Text(
            StringResource.signUpDescriptionText,
            style: TextStyleResource.secondary14(
              weight: FontWeight.w500,
              height: TextLineHeightResource.description,
            ),
          ),
        ),
      ],
    ),
  );
}
