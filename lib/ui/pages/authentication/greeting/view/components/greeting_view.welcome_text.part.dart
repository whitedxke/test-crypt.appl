part of '../greeting_view.dart';

Widget _buildWelcomeTextWidget() {
  return Column(
    children: [
      Text(
        StringResource.greetingTitleText,
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
          StringResource.greetingDescriptionText,
          style: TextStyleResource.secondary14(
            weight: FontWeight.w500,
            height: TextLineHeightResource.description,
          ),
        ),
      ),
    ],
  );
}
