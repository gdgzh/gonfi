import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/models.dart';

part 'session.g.dart';

abstract class Session implements Built<Session, SessionBuilder> {
  Session._();
  String get title;
  String get description;
  Speaker get speaker;
  String get topic;

  factory Session([updates(SessionBuilder builder)]) = _$Session;

  static Serializer<Session> get serializer => _$sessionSerializer;
}
