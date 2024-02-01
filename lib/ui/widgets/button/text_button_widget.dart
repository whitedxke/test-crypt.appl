import 'index.dart';

class TextButtonWidget extends StatelessWidget {
  final String _title;
  final VoidCallback _onTap;

  const TextButtonWidget({
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
      child: Text(
        _title,
        style: TextStyleResource.secondary18(
          weight: FontWeight.w400,
          height: TextLineHeightResource.title,
        ),
      ),
    );
  }
}
