// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

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

// Error: Stack Overflow
Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Address.serializer)
      ..add(Company.serializer)
      ..add(Room.serializer)
      ..add(Session.serializer)
      ..add(Skill.serializer)
      ..add(Speaker.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Skill)]),
          () => new ListBuilder<Skill>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Tags)]),
          () => new ListBuilder<Tags>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Session)]),
          () => new ListBuilder<Session>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SocialMediaProfile)]),
          () => new ListBuilder<SocialMediaProfile>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Tags)]),
          () => new ListBuilder<Tags>()))
    .build();
