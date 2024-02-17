import 'index.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? _controller;
  final String? _hintText;
  final TextInputType? _keyboardType;
  final String? _labelText;
  final String? _errorText;
  final Widget? _prefixIcon;
  final Widget? _suffixIcon;
  final bool? _obscureText;
  final bool? _enabled;
  final TextStyle? _hintStyle;
  final TextStyle? _style;
  final FocusNode? _focusNode;
  final void Function(String)? _onChanged;
  final void Function()? _onTap;

  const TextFieldWidget({
    Key? key,
    required TextEditingController controller,
    String? hintText,
    TextInputType? keyboardType,
    String? labelText,
    String? errorText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool? obscureText,
    bool? enabled,
    TextStyle? hintStyle,
    TextStyle? style,
    FocusNode? focusNode,
    void Function(String)? onChanged,
    void Function()? onTap,
  })  : _controller = controller,
        _hintText = hintText,
        _keyboardType = keyboardType,
        _labelText = labelText,
        _errorText = errorText,
        _prefixIcon = prefixIcon,
        _suffixIcon = suffixIcon,
        _obscureText = obscureText,
        _enabled = enabled,
        _hintStyle = hintStyle,
        _style = style,
        _focusNode = focusNode,
        _onChanged = onChanged,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: _style ?? TextStyleResource.secondary18(
        weight: FontWeight.w400,
        height: TextLineHeightResource.description,
      ),
      controller: _controller,
      keyboardType: _keyboardType,
      enabled: _enabled,
      focusNode: _focusNode,
      obscureText: _obscureText ?? false,
      decoration: InputDecoration(
        floatingLabelStyle:
        MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
          final Color color;
          if (states.contains(MaterialState.error)) {
            color = ColorResource.red;
          } else if (states.contains(MaterialState.focused)) {
            color = ColorResource.green;
          } else {
            color = ColorResource.white;
          }
          return TextStyle(color: color);
        }),
        labelStyle: MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
            final Color color;
            if (states.contains(MaterialState.error)) {
              color = ColorResource.red;
            } else if (states.contains(MaterialState.focused)) {
              color = ColorResource.green;
            } else {
              color = ColorResource.white;
            }
            final hintStyle = _hintStyle;
            final colorStyle = TextStyle(
              color: color,
            );
            if (hintStyle != null) {
              return hintStyle.merge(colorStyle);
            }
            return colorStyle;
          },
        ),
        hintStyle: _hintStyle ?? TextStyleResource.secondary18(
          weight: FontWeight.w400,
          height: TextLineHeightResource.description,
        ),
        labelText: _labelText,
        hintText: _hintText,
        prefixIcon: _prefixIcon,
        suffixIcon: _suffixIcon,
        suffixIconConstraints: BoxConstraints(
            minHeight: 24.w,
            minWidth: 24.w,
        ),
        errorText: _errorText,
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          borderSide: BorderSide(
            color: ColorResource.grey,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          borderSide: BorderSide(
            color: ColorResource.green,
            width: 1.w,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          borderSide: BorderSide(
            color: ColorResource.red,
            width: 1.w,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.r),
          ),
          borderSide: BorderSide(
            color: ColorResource.red,
            width: 1.w,
          ),
        ),
        errorStyle: TextStyleResource.secondary18(
          weight: FontWeight.w400,
          height: TextLineHeightResource.description,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 16.h,
          horizontal: 16.w,
        ),
      ),
      onTap: _onTap,
      onChanged: _onChanged,
    );
  }
}