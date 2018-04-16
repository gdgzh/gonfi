// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

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

Serializer<Session> _$sessionSerializer = new _$SessionSerializer();

class _$SessionSerializer implements StructuredSerializer<Session> {
  @override
  final Iterable<Type> types = const [Session, _$Session];
  @override
  final String wireName = 'Session';

  @override
  Iterable serialize(Serializers serializers, Session object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'speaker',
      serializers.serialize(object.speaker,
          specifiedType: const FullType(Speaker)),
      'topic',
      serializers.serialize(object.topic,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Session deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SessionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'speaker':
          result.speaker.replace(serializers.deserialize(value,
              specifiedType: const FullType(Speaker)) as Speaker);
          break;
        case 'topic':
          result.topic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Session extends Session {
  @override
  final String title;
  @override
  final String description;
  @override
  final Speaker speaker;
  @override
  final String topic;

  factory _$Session([void updates(SessionBuilder b)]) =>
      (new SessionBuilder()..update(updates)).build();

  _$Session._({this.title, this.description, this.speaker, this.topic})
      : super._() {
    if (title == null) throw new BuiltValueNullFieldError('Session', 'title');
    if (description == null)
      throw new BuiltValueNullFieldError('Session', 'description');
    if (speaker == null)
      throw new BuiltValueNullFieldError('Session', 'speaker');
    if (topic == null) throw new BuiltValueNullFieldError('Session', 'topic');
  }

  @override
  Session rebuild(void updates(SessionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionBuilder toBuilder() => new SessionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Session) return false;
    return title == other.title &&
        description == other.description &&
        speaker == other.speaker &&
        topic == other.topic;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), description.hashCode),
            speaker.hashCode),
        topic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Session')
          ..add('title', title)
          ..add('description', description)
          ..add('speaker', speaker)
          ..add('topic', topic))
        .toString();
  }
}

class SessionBuilder implements Builder<Session, SessionBuilder> {
  _$Session _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  SpeakerBuilder _speaker;
  SpeakerBuilder get speaker => _$this._speaker ??= new SpeakerBuilder();
  set speaker(SpeakerBuilder speaker) => _$this._speaker = speaker;

  String _topic;
  String get topic => _$this._topic;
  set topic(String topic) => _$this._topic = topic;

  SessionBuilder();

  SessionBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _speaker = _$v.speaker?.toBuilder();
      _topic = _$v.topic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Session other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Session;
  }

  @override
  void update(void updates(SessionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Session build() {
    _$Session _$result;
    try {
      _$result = _$v ??
          new _$Session._(
              title: title,
              description: description,
              speaker: speaker.build(),
              topic: topic);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'speaker';
        speaker.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Session', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
