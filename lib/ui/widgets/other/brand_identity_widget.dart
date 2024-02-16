import 'index.dart';

class BrandIdentityWidget extends StatelessWidget {
  const BrandIdentityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ImageResource.icLogotype,
            width: 80.w,
            height: 120.h,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            StringResource.splashTitleText,
            style: TextStyleResource.secondary26(
              weight: FontWeight.w500,
              height: TextLineHeightResource.title,
            ),
          ),
        ],
      ),
    );
  }
}
