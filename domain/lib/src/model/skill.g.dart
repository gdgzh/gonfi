// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<Skill> _$skillSerializer = new _$SkillSerializer();

class _$SkillSerializer implements StructuredSerializer<Skill> {
  @override
  final Iterable<Type> types = const [Skill, _$Skill];
  @override
  final String wireName = 'Skill';

  @override
  Iterable serialize(Serializers serializers, Skill object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Skill deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SkillBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Skill extends Skill {
  @override
  final String name;
  @override
  final int color;

  factory _$Skill([void updates(SkillBuilder b)]) =>
      (new SkillBuilder()..update(updates)).build();

  _$Skill._({this.name, this.color}) : super._() {
    if (name == null) throw new BuiltValueNullFieldError('Skill', 'name');
    if (color == null) throw new BuiltValueNullFieldError('Skill', 'color');
  }

  @override
  Skill rebuild(void updates(SkillBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SkillBuilder toBuilder() => new SkillBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Skill) return false;
    return name == other.name && color == other.color;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), color.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Skill')
          ..add('name', name)
          ..add('color', color))
        .toString();
  }
}

class SkillBuilder implements Builder<Skill, SkillBuilder> {
  _$Skill _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _color;
  int get color => _$this._color;
  set color(int color) => _$this._color = color;

  SkillBuilder();

  SkillBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _color = _$v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Skill other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Skill;
  }

  @override
  void update(void updates(SkillBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Skill build() {
    final _$result = _$v ?? new _$Skill._(name: name, color: color);
    replace(_$result);
    return _$result;
  }
}
