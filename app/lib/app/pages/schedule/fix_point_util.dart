class FixPoint {
  final DateTime dateTime;
  final double yPoint;
  final double xPoint;
  FixPoint(this.dateTime, this.yPoint, this.xPoint);

  @override
  String toString() {
    return "FixPoint: { dateTime: ${dateTime.toIso8601String()}, yPoint: $yPoint, xPoint: $xPoint}";
  }

  // Sort
  static int sortByDateTime(FixPoint a, FixPoint b) {
    return a.dateTime.compareTo(b.dateTime);
  }
}
