import 'package:gonfi/domain/model/speaker.dart';
import 'package:meta/meta.dart';

@immutable
class Session {
  final String title;
  final String description;
  final List<Speaker> speakers;
  final String topic;
  final String language;
  final Room room;
  final DateTime date;
  final SessionLevel sessionLevel;
  final List<String> tags;

  Session({
    @required this.title,
    @required this.description,
    @required this.speakers,
    @required this.topic,
    @required this.room,
    @required this.language,
    @required this.sessionLevel,
    @required this.date,
    @required this.tags,
  });
}

class Room {
  final int floor;
  final Address address;
  final String number;

  Room({this.floor, this.address, @required this.number});
}

enum SessionLevel { Beginner, Intermediate, Pro }
