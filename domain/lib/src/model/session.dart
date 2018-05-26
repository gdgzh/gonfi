import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/models.dart';
import 'package:gonfi_domain/src/model/session_level.dart';

part 'session.g.dart';

abstract class Session implements Built<Session, SessionBuilder> {
  Session._();
  String get title;
  String get description;
  //Speaker get speaker;
  String get topic;
  String get language;
  Room get room;
  DateTime get date;
  SessionLevel get sessionLevel;
  BuiltList<String> get tags;

  factory Session([updates(SessionBuilder builder)]) = _$Session;

  static Serializer<Session> get serializer => _$sessionSerializer;
}
