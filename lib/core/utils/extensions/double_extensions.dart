extension DoubleExtensions on double? {
  double orEmpty() {
    final double? result;
    if (this == null) {
      result = 0;
    } else {
      result = this!;
    }
    return result;
  }
}
