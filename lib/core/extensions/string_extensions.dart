extension StringX on String? {
  bool get nullOrEmpty => this == null || this!.isEmpty;
}
