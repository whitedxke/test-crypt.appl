part of '../onboarding_view.dart';

Container _buildLoadingIndicatorWidget({
  required BuildContext context,
  required int index,
  required int currentIndex,
}) {
  return Container(
    height: 10.h,
    width: 10.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16.r),
      color: currentIndex == index ? ColorResource.green : ColorResource.grey,
    ),
  );
}
