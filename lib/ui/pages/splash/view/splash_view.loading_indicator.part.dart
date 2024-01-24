part of 'splash_view.dart';

Widget _buildLoadingIndicator() {
  return Padding(
    padding: EdgeInsets.fromLTRB(
      16.w,
      60.h,
      16.w,
      10.h,
    ),
    child: SizedBox(
      height: 24.h,
      width: 24.w,
      child: CircularProgressIndicator(
        strokeWidth: 2.6.w,
        color: ColorResource.white,
      ),
    ),
  );
}
