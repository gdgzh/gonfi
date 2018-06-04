import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'skill.g.dart';

abstract class Skill implements Built<Skill, SkillBuilder> {
  Skill._();
  String get name;
  int get color;

  factory Skill([updates(SkillBuilder b)]) = _$Skill;

  static Serializer<Skill> get serializer => _$skillSerializer;
}
