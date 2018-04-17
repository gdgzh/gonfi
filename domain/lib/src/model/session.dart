import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/models.dart';

part 'session.g.dart';

abstract class Session implements Built<Session, SessionBuilder> {
  Session._();
  String get topic;
  @nullable
  String get description;
  @nullable
  Room get room;
  @nullable
  DateTime get date;
  @nullable
  SessionLevel get sessionLevel;
  @nullable
  BuiltList<Tags> get skills;
  @nullable
  String get language;
  BuiltList<Speaker> get speakers;
  @nullable
  BuiltList<String> get tags;

  factory Session([updates(SessionBuilder builder)]) = _$Session;

  static Serializer<Session> get serializer => _$sessionSerializer;
}
