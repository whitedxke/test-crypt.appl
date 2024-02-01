import 'index.dart';

class MaterialButtonWidget extends StatelessWidget {
  final String _title;
  final VoidCallback _onTap;

  const MaterialButtonWidget({
    Key? key,
    required String title,
    required VoidCallback onTap,
  })  : _title = title,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: ColorResource.green,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 12.h,
            horizontal: 16.w,
          ),
          child: Text(
            _title,
            style: TextStyleResource.secondary18(
              weight: FontWeight.w500,
              height: TextLineHeightResource.text,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
