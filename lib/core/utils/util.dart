extension StringOnDoubleExt on double {
  String roundTo1Decimal() {
    if (toString().contains('.0')) {
      return floor().toString();
    }
    return toStringAsFixed(1);
  }
}

extension StringExt on String? {
  bool hasValue() => this?.isNotEmpty == true;
}
