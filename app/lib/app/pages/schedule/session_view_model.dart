import 'package:meta/meta.dart';

@immutable
class SessionViewModel {
  final String title;
  final String time;
  final String subTitle;
  final bool isFavor;

  SessionViewModel(this.title, this.time, this.subTitle, this.isFavor);
}
