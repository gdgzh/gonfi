// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member.dart';

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

Serializer<TeamMember> _$teamMemberSerializer = new _$TeamMemberSerializer();

class _$TeamMemberSerializer implements StructuredSerializer<TeamMember> {
  @override
  final Iterable<Type> types = const [TeamMember, _$TeamMember];
  @override
  final String wireName = 'TeamMember';

  @override
  Iterable serialize(Serializers serializers, TeamMember object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
    ];
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(String)));
    }
    if (object.imageUri != null) {
      result
        ..add('imageUri')
        ..add(serializers.serialize(object.imageUri,
            specifiedType: const FullType(String)));
    }
    if (object.about != null) {
      result
        ..add('about')
        ..add(serializers.serialize(object.about,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Tags)])));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(Address)));
    }
    if (object.company != null) {
      result
        ..add('company')
        ..add(serializers.serialize(object.company,
            specifiedType: const FullType(Company)));
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
  TeamMember deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new TeamMemberBuilder();

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
        case 'role':
          result.role = serializers.deserialize(value,
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

class _$TeamMember extends TeamMember {
  @override
  final String name;
  @override
  final String lastName;
  @override
  final String role;
  @override
  final String imageUri;
  @override
  final String about;
  @override
  final BuiltList<Tags> tags;
  @override
  final Address address;
  @override
  final Company company;
  @override
  final BuiltList<SocialMediaProfile> socialMediaProfiles;

  factory _$TeamMember([void updates(TeamMemberBuilder b)]) =>
      (new TeamMemberBuilder()..update(updates)).build();

  _$TeamMember._(
      {this.name,
      this.lastName,
      this.role,
      this.imageUri,
      this.about,
      this.tags,
      this.address,
      this.company,
      this.socialMediaProfiles})
      : super._() {
    if (name == null) throw new BuiltValueNullFieldError('TeamMember', 'name');
    if (lastName == null)
      throw new BuiltValueNullFieldError('TeamMember', 'lastName');
  }

  @override
  TeamMember rebuild(void updates(TeamMemberBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamMemberBuilder toBuilder() => new TeamMemberBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! TeamMember) return false;
    return name == other.name &&
        lastName == other.lastName &&
        role == other.role &&
        imageUri == other.imageUri &&
        about == other.about &&
        tags == other.tags &&
        address == other.address &&
        company == other.company &&
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
                            $jc($jc($jc(0, name.hashCode), lastName.hashCode),
                                role.hashCode),
                            imageUri.hashCode),
                        about.hashCode),
                    tags.hashCode),
                address.hashCode),
            company.hashCode),
        socialMediaProfiles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamMember')
          ..add('name', name)
          ..add('lastName', lastName)
          ..add('role', role)
          ..add('imageUri', imageUri)
          ..add('about', about)
          ..add('tags', tags)
          ..add('address', address)
          ..add('company', company)
          ..add('socialMediaProfiles', socialMediaProfiles))
        .toString();
  }
}

class TeamMemberBuilder implements Builder<TeamMember, TeamMemberBuilder> {
  _$TeamMember _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  String _imageUri;
  String get imageUri => _$this._imageUri;
  set imageUri(String imageUri) => _$this._imageUri = imageUri;

  String _about;
  String get about => _$this._about;
  set about(String about) => _$this._about = about;

  ListBuilder<Tags> _tags;
  ListBuilder<Tags> get tags => _$this._tags ??= new ListBuilder<Tags>();
  set tags(ListBuilder<Tags> tags) => _$this._tags = tags;

  AddressBuilder _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder address) => _$this._address = address;

  CompanyBuilder _company;
  CompanyBuilder get company => _$this._company ??= new CompanyBuilder();
  set company(CompanyBuilder company) => _$this._company = company;

  ListBuilder<SocialMediaProfile> _socialMediaProfiles;
  ListBuilder<SocialMediaProfile> get socialMediaProfiles =>
      _$this._socialMediaProfiles ??= new ListBuilder<SocialMediaProfile>();
  set socialMediaProfiles(
          ListBuilder<SocialMediaProfile> socialMediaProfiles) =>
      _$this._socialMediaProfiles = socialMediaProfiles;

  TeamMemberBuilder();

  TeamMemberBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _lastName = _$v.lastName;
      _role = _$v.role;
      _imageUri = _$v.imageUri;
      _about = _$v.about;
      _tags = _$v.tags?.toBuilder();
      _address = _$v.address?.toBuilder();
      _company = _$v.company?.toBuilder();
      _socialMediaProfiles = _$v.socialMediaProfiles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamMember other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TeamMember;
  }

  @override
  void update(void updates(TeamMemberBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamMember build() {
    _$TeamMember _$result;
    try {
      _$result = _$v ??
          new _$TeamMember._(
              name: name,
              lastName: lastName,
              role: role,
              imageUri: imageUri,
              about: about,
              tags: _tags?.build(),
              address: _address?.build(),
              company: _company?.build(),
              socialMediaProfiles: _socialMediaProfiles?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'address';
        _address?.build();
        _$failedField = 'company';
        _company?.build();
        _$failedField = 'socialMediaProfiles';
        _socialMediaProfiles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamMember', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
