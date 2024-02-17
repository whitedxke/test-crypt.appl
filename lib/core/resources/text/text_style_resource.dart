import 'index.dart';

class TextStyleResource {
  static final TextStyle _base = TextStyle(
    color: ColorResource.black,
    fontFamily: TextFamilyResource.montserrat,
    fontSize: TextSizeResource.fontSize10,
  );

  // ---- Primary.

  static TextStyle primary10({
    required FontWeight weight,
    required TextLineHeightResource height,
  }) {
    return _base.merge(
      TextStyle(
        height: height.value,
        fontWeight: weight,
        fontSize: TextSizeResource.fontSize10,
      ),
    );
  }

  static TextStyle primary12({
    required FontWeight weight,
    required TextLineHeightResource height,
  }) {
    return _base.merge(
      TextStyle(
        height: height.value,
        fontWeight: weight,
        fontSize: TextSizeResource.fontSize12,
      ),
    );
  }

  // ---- Secondary.

  static TextStyle secondary10({
    required FontWeight weight,
    required TextLineHeightResource height,
  }) {
    return primary10(
      weight: weight,
      height: height,
    ).merge(
      const TextStyle(
        color: ColorResource.white,
      ),
    );
  }

  static TextStyle secondary12({
    required FontWeight weight,
    required TextLineHeightResource height,
  }) {
    return secondary10(
      weight: weight,
      height: height,
    ).merge(
      TextStyle(
        fontSize: TextSizeResource.fontSize12,
      ),
    );
  }

  static TextStyle secondary14({
    required FontWeight weight,
    required TextLineHeightResource height,
  }) {
    return secondary10(
      weight: weight,
      height: height,
    ).merge(
      TextStyle(
        fontSize: TextSizeResource.fontSize14,
      ),
    );
  }

  static TextStyle secondary18({
    required FontWeight weight,
    required TextLineHeightResource height,
  }) {
    return secondary10(
      weight: weight,
      height: height,
    ).merge(
      TextStyle(
        fontSize: TextSizeResource.fontSize18,
      ),
    );
  }

  static TextStyle secondary24({
    required FontWeight weight,
    required TextLineHeightResource height,
  }) {
    return secondary10(
      weight: weight,
      height: height,
    ).merge(
      TextStyle(
        fontSize: TextSizeResource.fontSize24,
      ),
    );
  }

  static TextStyle secondary26({
    required FontWeight weight,
    required TextLineHeightResource height,
  }) {
    return secondary10(
      weight: weight,
      height: height,
    ).merge(
      TextStyle(
        fontSize: TextSizeResource.fontSize26,
      ),
    );
  }

  // ---- Green.

  static TextStyle green10({
    required FontWeight weight,
    required TextLineHeightResource height,
  }) {
    return primary10(
      weight: weight,
      height: height,
    ).merge(
      const TextStyle(
        color: ColorResource.green,
      ),
    );
  }

  static TextStyle green16({
    required FontWeight weight,
    required TextLineHeightResource height,
  }) {
    return green10(
      weight: weight,
      height: height,
    ).merge(
      TextStyle(
        fontSize: TextSizeResource.fontSize16,
      ),
    );
  }
}
