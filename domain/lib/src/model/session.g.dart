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
      'topic',
      serializers.serialize(object.topic,
          specifiedType: const FullType(String)),
      'language',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'room',
      serializers.serialize(object.room, specifiedType: const FullType(Room)),
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
      'sessionLevel',
      serializers.serialize(object.sessionLevel,
          specifiedType: const FullType(SessionLevel)),
      'tags',
      serializers.serialize(object.tags,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
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
        case 'topic':
          result.topic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
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
  final String title;
  @override
  final String description;
  @override
  final String topic;
  @override
  final String language;
  @override
  final Room room;
  @override
  final DateTime date;
  @override
  final SessionLevel sessionLevel;
  @override
  final BuiltList<String> tags;

  factory _$Session([void updates(SessionBuilder b)]) =>
      (new SessionBuilder()..update(updates)).build();

  _$Session._(
      {this.title,
      this.description,
      this.topic,
      this.language,
      this.room,
      this.date,
      this.sessionLevel,
      this.tags})
      : super._() {
    if (title == null) throw new BuiltValueNullFieldError('Session', 'title');
    if (description == null)
      throw new BuiltValueNullFieldError('Session', 'description');
    if (topic == null) throw new BuiltValueNullFieldError('Session', 'topic');
    if (language == null)
      throw new BuiltValueNullFieldError('Session', 'language');
    if (room == null) throw new BuiltValueNullFieldError('Session', 'room');
    if (date == null) throw new BuiltValueNullFieldError('Session', 'date');
    if (sessionLevel == null)
      throw new BuiltValueNullFieldError('Session', 'sessionLevel');
    if (tags == null) throw new BuiltValueNullFieldError('Session', 'tags');
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
        topic == other.topic &&
        language == other.language &&
        room == other.room &&
        date == other.date &&
        sessionLevel == other.sessionLevel &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, title.hashCode), description.hashCode),
                            topic.hashCode),
                        language.hashCode),
                    room.hashCode),
                date.hashCode),
            sessionLevel.hashCode),
        tags.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Session')
          ..add('title', title)
          ..add('description', description)
          ..add('topic', topic)
          ..add('language', language)
          ..add('room', room)
          ..add('date', date)
          ..add('sessionLevel', sessionLevel)
          ..add('tags', tags))
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

  String _topic;
  String get topic => _$this._topic;
  set topic(String topic) => _$this._topic = topic;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

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

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  SessionBuilder();

  SessionBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _description = _$v.description;
      _topic = _$v.topic;
      _language = _$v.language;
      _room = _$v.room?.toBuilder();
      _date = _$v.date;
      _sessionLevel = _$v.sessionLevel;
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
              title: title,
              description: description,
              topic: topic,
              language: language,
              room: room.build(),
              date: date,
              sessionLevel: sessionLevel,
              tags: tags.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'room';
        room.build();

        _$failedField = 'tags';
        tags.build();
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
