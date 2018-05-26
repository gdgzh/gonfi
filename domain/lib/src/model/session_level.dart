import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_level.g.dart';

class SessionLevel extends EnumClass {
  static const SessionLevel beginner = _$beginner;
  static const SessionLevel intermediate = _$intermediate;
  static const SessionLevel advanced = _$advanced;

  const SessionLevel._(String name) : super(name);

  static BuiltSet<SessionLevel> get values => _$values;
  static SessionLevel valueOf(String name) => _$valueOf(name);
  static Serializer<SessionLevel> get serializer => _$sessionLevelSerializer;
}
