import 'package:gonfi/domain/model/speaker.dart';
import 'package:meta/meta.dart';

@immutable
class Session {
  final String title;
  final String description;
  final Speaker speaker;
  final String topic;

  Session(
      {@required this.title,
      @required this.description,
      @required this.speaker,
      @required this.topic});
}
