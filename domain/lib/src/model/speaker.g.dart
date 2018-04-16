// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speaker.dart';

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

Serializer<Speaker> _$speakerSerializer = new _$SpeakerSerializer();

class _$SpeakerSerializer implements StructuredSerializer<Speaker> {
  @override
  final Iterable<Type> types = const [Speaker, _$Speaker];
  @override
  final String wireName = 'Speaker';

  @override
  Iterable serialize(Serializers serializers, Speaker object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'imageUri',
      serializers.serialize(object.imageUri,
          specifiedType: const FullType(String)),
      'about',
      serializers.serialize(object.about,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(Address)),
      'company',
      serializers.serialize(object.company,
          specifiedType: const FullType(Company)),
    ];
    if (object.skills != null) {
      result
        ..add('skills')
        ..add(serializers.serialize(object.skills,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Skill)])));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Tags)])));
    }
    if (object.sessions != null) {
      result
        ..add('sessions')
        ..add(serializers.serialize(object.sessions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Session)])));
    }
    if (object.socialMediaProfiles != null) {
      result
        ..add('socialMediaProfiles')
        ..add(serializers.serialize(object.socialMediaProfiles,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SocialMediaProfile)])));
    }

    return result;
  }

  @override
  Speaker deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SpeakerBuilder();

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
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUri':
          result.imageUri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'skills':
          result.skills.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Skill)]))
              as BuiltList);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Tags)]))
              as BuiltList);
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'company':
          result.company.replace(serializers.deserialize(value,
              specifiedType: const FullType(Company)) as Company);
          break;
        case 'sessions':
          result.sessions.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Session)])) as BuiltList);
          break;
        case 'socialMediaProfiles':
          result.socialMediaProfiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SocialMediaProfile)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Speaker extends Speaker {
  @override
  final String name;
  @override
  final String lastName;
  @override
  final String imageUri;
  @override
  final String about;
  @override
  final BuiltList<Skill> skills;
  @override
  final BuiltList<Tags> tags;
  @override
  final Address address;
  @override
  final Company company;
  @override
  final BuiltList<Session> sessions;
  @override
  final BuiltList<SocialMediaProfile> socialMediaProfiles;

  factory _$Speaker([void updates(SpeakerBuilder b)]) =>
      (new SpeakerBuilder()..update(updates)).build();

  _$Speaker._(
      {this.name,
      this.lastName,
      this.imageUri,
      this.about,
      this.skills,
      this.tags,
      this.address,
      this.company,
      this.sessions,
      this.socialMediaProfiles})
      : super._() {
    if (name == null) throw new BuiltValueNullFieldError('Speaker', 'name');
    if (lastName == null)
      throw new BuiltValueNullFieldError('Speaker', 'lastName');
    if (imageUri == null)
      throw new BuiltValueNullFieldError('Speaker', 'imageUri');
    if (about == null) throw new BuiltValueNullFieldError('Speaker', 'about');
    if (address == null)
      throw new BuiltValueNullFieldError('Speaker', 'address');
    if (company == null)
      throw new BuiltValueNullFieldError('Speaker', 'company');
  }

  @override
  Speaker rebuild(void updates(SpeakerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SpeakerBuilder toBuilder() => new SpeakerBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Speaker) return false;
    return name == other.name &&
        lastName == other.lastName &&
        imageUri == other.imageUri &&
        about == other.about &&
        skills == other.skills &&
        tags == other.tags &&
        address == other.address &&
        company == other.company &&
        sessions == other.sessions &&
        socialMediaProfiles == other.socialMediaProfiles;
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
                                $jc(
                                    $jc($jc(0, name.hashCode),
                                        lastName.hashCode),
                                    imageUri.hashCode),
                                about.hashCode),
                            skills.hashCode),
                        tags.hashCode),
                    address.hashCode),
                company.hashCode),
            sessions.hashCode),
        socialMediaProfiles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Speaker')
          ..add('name', name)
          ..add('lastName', lastName)
          ..add('imageUri', imageUri)
          ..add('about', about)
          ..add('skills', skills)
          ..add('tags', tags)
          ..add('address', address)
          ..add('company', company)
          ..add('sessions', sessions)
          ..add('socialMediaProfiles', socialMediaProfiles))
        .toString();
  }
}

class SpeakerBuilder implements Builder<Speaker, SpeakerBuilder> {
  _$Speaker _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _imageUri;
  String get imageUri => _$this._imageUri;
  set imageUri(String imageUri) => _$this._imageUri = imageUri;

  String _about;
  String get about => _$this._about;
  set about(String about) => _$this._about = about;

  ListBuilder<Skill> _skills;
  ListBuilder<Skill> get skills => _$this._skills ??= new ListBuilder<Skill>();
  set skills(ListBuilder<Skill> skills) => _$this._skills = skills;

  ListBuilder<Tags> _tags;
  ListBuilder<Tags> get tags => _$this._tags ??= new ListBuilder<Tags>();
  set tags(ListBuilder<Tags> tags) => _$this._tags = tags;

  AddressBuilder _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder address) => _$this._address = address;

  CompanyBuilder _company;
  CompanyBuilder get company => _$this._company ??= new CompanyBuilder();
  set company(CompanyBuilder company) => _$this._company = company;

  ListBuilder<Session> _sessions;
  ListBuilder<Session> get sessions =>
      _$this._sessions ??= new ListBuilder<Session>();
  set sessions(ListBuilder<Session> sessions) => _$this._sessions = sessions;

  ListBuilder<SocialMediaProfile> _socialMediaProfiles;
  ListBuilder<SocialMediaProfile> get socialMediaProfiles =>
      _$this._socialMediaProfiles ??= new ListBuilder<SocialMediaProfile>();
  set socialMediaProfiles(
          ListBuilder<SocialMediaProfile> socialMediaProfiles) =>
      _$this._socialMediaProfiles = socialMediaProfiles;

  SpeakerBuilder();

  SpeakerBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _lastName = _$v.lastName;
      _imageUri = _$v.imageUri;
      _about = _$v.about;
      _skills = _$v.skills?.toBuilder();
      _tags = _$v.tags?.toBuilder();
      _address = _$v.address?.toBuilder();
      _company = _$v.company?.toBuilder();
      _sessions = _$v.sessions?.toBuilder();
      _socialMediaProfiles = _$v.socialMediaProfiles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Speaker other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Speaker;
  }

  @override
  void update(void updates(SpeakerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Speaker build() {
    _$Speaker _$result;
    try {
      _$result = _$v ??
          new _$Speaker._(
              name: name,
              lastName: lastName,
              imageUri: imageUri,
              about: about,
              skills: _skills?.build(),
              tags: _tags?.build(),
              address: address.build(),
              company: company.build(),
              sessions: _sessions?.build(),
              socialMediaProfiles: _socialMediaProfiles?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'skills';
        _skills?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'address';
        address.build();
        _$failedField = 'company';
        company.build();
        _$failedField = 'sessions';
        _sessions?.build();
        _$failedField = 'socialMediaProfiles';
        _socialMediaProfiles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Speaker', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
