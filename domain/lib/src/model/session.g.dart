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
      'topic',
      serializers.serialize(object.topic,
          specifiedType: const FullType(String)),
      'speakers',
      serializers.serialize(object.speakers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Speaker)])),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.room != null) {
      result
        ..add('room')
        ..add(serializers.serialize(object.room,
            specifiedType: const FullType(Room)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(DateTime)));
    }
    if (object.sessionLevel != null) {
      result
        ..add('sessionLevel')
        ..add(serializers.serialize(object.sessionLevel,
            specifiedType: const FullType(SessionLevel)));
    }
    if (object.skills != null) {
      result
        ..add('skills')
        ..add(serializers.serialize(object.skills,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Tags)])));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }

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
        case 'topic':
          result.topic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'room':
          result.room.replace(serializers.deserialize(value,
              specifiedType: const FullType(Room)) as Room);
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sessionLevel':
          result.sessionLevel = serializers.deserialize(value,
              specifiedType: const FullType(SessionLevel)) as SessionLevel;
          break;
        case 'skills':
          result.skills.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Tags)]))
              as BuiltList);
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'speakers':
          result.speakers.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Speaker)])) as BuiltList);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Session extends Session {
  @override
  final String topic;
  @override
  final String description;
  @override
  final Room room;
  @override
  final DateTime date;
  @override
  final SessionLevel sessionLevel;
  @override
  final BuiltList<Tags> skills;
  @override
  final String language;
  @override
  final BuiltList<Speaker> speakers;
  @override
  final BuiltList<String> tags;

  factory _$Session([void updates(SessionBuilder b)]) =>
      (new SessionBuilder()..update(updates)).build();

  _$Session._(
      {this.topic,
      this.description,
      this.room,
      this.date,
      this.sessionLevel,
      this.skills,
      this.language,
      this.speakers,
      this.tags})
      : super._() {
    if (topic == null) throw new BuiltValueNullFieldError('Session', 'topic');
    if (speakers == null)
      throw new BuiltValueNullFieldError('Session', 'speakers');
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
    return topic == other.topic &&
        description == other.description &&
        room == other.room &&
        date == other.date &&
        sessionLevel == other.sessionLevel &&
        skills == other.skills &&
        language == other.language &&
        speakers == other.speakers &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, topic.hashCode),
                                    description.hashCode),
                                room.hashCode),
                            date.hashCode),
                        sessionLevel.hashCode),
                    skills.hashCode),
                language.hashCode),
            speakers.hashCode),
        tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Session')
          ..add('topic', topic)
          ..add('description', description)
          ..add('room', room)
          ..add('date', date)
          ..add('sessionLevel', sessionLevel)
          ..add('skills', skills)
          ..add('language', language)
          ..add('speakers', speakers)
          ..add('tags', tags))
        .toString();
  }
}

class SessionBuilder implements Builder<Session, SessionBuilder> {
  _$Session _$v;

  String _topic;
  String get topic => _$this._topic;
  set topic(String topic) => _$this._topic = topic;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  RoomBuilder _room;
  RoomBuilder get room => _$this._room ??= new RoomBuilder();
  set room(RoomBuilder room) => _$this._room = room;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  SessionLevel _sessionLevel;
  SessionLevel get sessionLevel => _$this._sessionLevel;
  set sessionLevel(SessionLevel sessionLevel) =>
      _$this._sessionLevel = sessionLevel;

  ListBuilder<Tags> _skills;
  ListBuilder<Tags> get skills => _$this._skills ??= new ListBuilder<Tags>();
  set skills(ListBuilder<Tags> skills) => _$this._skills = skills;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  ListBuilder<Speaker> _speakers;
  ListBuilder<Speaker> get speakers =>
      _$this._speakers ??= new ListBuilder<Speaker>();
  set speakers(ListBuilder<Speaker> speakers) => _$this._speakers = speakers;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  SessionBuilder();

  SessionBuilder get _$this {
    if (_$v != null) {
      _topic = _$v.topic;
      _description = _$v.description;
      _room = _$v.room?.toBuilder();
      _date = _$v.date;
      _sessionLevel = _$v.sessionLevel;
      _skills = _$v.skills?.toBuilder();
      _language = _$v.language;
      _speakers = _$v.speakers?.toBuilder();
      _tags = _$v.tags?.toBuilder();
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
              topic: topic,
              description: description,
              room: _room?.build(),
              date: date,
              sessionLevel: sessionLevel,
              skills: _skills?.build(),
              language: language,
              speakers: speakers.build(),
              tags: _tags?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'room';
        _room?.build();

        _$failedField = 'skills';
        _skills?.build();

        _$failedField = 'speakers';
        speakers.build();
        _$failedField = 'tags';
        _tags?.build();
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
