import 'index.dart';

class BrandIdentityWidget extends StatelessWidget {
  final bool _isAxisAligned;

  const BrandIdentityWidget({
    Key? key,
    required bool isAxisAligned,
  })  : _isAxisAligned = isAxisAligned,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_isAxisAligned == true) {
      return _buildHorizontalBrandIdentityWidget();
    } else {
      return _buildVerticalBrandIdentityWidget();
    }
  }

  Widget _buildVerticalBrandIdentityWidget() {
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

  Widget _buildHorizontalBrandIdentityWidget() {
    return Row(
      children: [
        SvgPicture.asset(
          ImageResource.icLogotype,
          width: 20.w,
          height: 40.h,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          StringResource.splashTitleText,
          style: TextStyleResource.secondary26(
            weight: FontWeight.w500,
            height: TextLineHeightResource.title,
          ),
        ),
      ],
    );
  }
}
