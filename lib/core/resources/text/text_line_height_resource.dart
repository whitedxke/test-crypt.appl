enum TextLineHeightResource {
  caption(1.14),
  header(1.16),
  title(1.22),
  text(1.25),
  description(1.33),

  silence(null);

  const TextLineHeightResource(this.value);

  final double? value;
}