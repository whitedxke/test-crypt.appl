part of '../onboarding_view.dart';

Widget _buildOnboardingItemWidget({
  required String image,
  required String description,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 40.w,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(
            image,
          ),
          height: 250.h,
          width: 250.h,
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 6.w,
          ),
          child: Container(
            height: 84.w,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyleResource.secondary18(
                weight: FontWeight.w400,
                height: TextLineHeightResource.caption,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
