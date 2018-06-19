import 'package:meta/meta.dart';

@immutable
class SessionViewModel {
  final String title;
  final String time;
  final String subTitle;
  final bool isFavor;

  SessionViewModel(
      {@required this.title,
      @required this.time,
      @required this.subTitle,
      this.isFavor = false})
      : assert(title != null),
        assert(time != null),
        assert(subTitle != null);
}
