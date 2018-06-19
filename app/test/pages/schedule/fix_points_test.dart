import 'package:gonfi/app/pages/schedule/fix_point_util.dart';
import 'package:test/test.dart';

main() {
  group('Fixpoints test', () {
    var firstTime = DateTime.parse("2018-06-11T08:00:00+01:00");
    var secondTime = firstTime.add(Duration(hours: 1));
    var thirdTime = firstTime.add(Duration(hours: 2));

    var firstPoint = FixPoint(firstTime, 144.0, 25.0);
    var secondPoint = FixPoint(secondTime, 216.0, 25.0);
    var thirdPoint = FixPoint(thirdTime, 288.0, 25.0);

    test('Should add an new fix point', () {
      var fixPoints = [secondPoint, thirdPoint, firstPoint];
      fixPoints.sort((a, b) => FixPoint.sortByDateTime(a, b));
      expect(fixPoints.first, firstPoint);
      expect(fixPoints[1], secondPoint);
      expect(fixPoints.last, thirdPoint);
    });
  });
}
