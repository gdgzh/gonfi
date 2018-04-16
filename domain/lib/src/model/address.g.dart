// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

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

Serializer<Address> _$addressSerializer = new _$AddressSerializer();

class _$AddressSerializer implements StructuredSerializer<Address> {
  @override
  final Iterable<Type> types = const [Address, _$Address];
  @override
  final String wireName = 'Address';

  @override
  Iterable serialize(Serializers serializers, Address object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
      'zip',
      serializers.serialize(object.zip, specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
    ];
    if (object.street2 != null) {
      result
        ..add('street2')
        ..add(serializers.serialize(object.street2,
            specifiedType: const FullType(String)));
    }
    if (object.street3 != null) {
      result
        ..add('street3')
        ..add(serializers.serialize(object.street3,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Address deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AddressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'street2':
          result.street2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'street3':
          result.street3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Address extends Address {
  @override
  final String street;
  @override
  final String street2;
  @override
  final String street3;
  @override
  final String city;
  @override
  final String state;
  @override
  final String zip;
  @override
  final String country;

  factory _$Address([void updates(AddressBuilder b)]) =>
      (new AddressBuilder()..update(updates)).build();

  _$Address._(
      {this.street,
      this.street2,
      this.street3,
      this.city,
      this.state,
      this.zip,
      this.country})
      : super._() {
    if (street == null) throw new BuiltValueNullFieldError('Address', 'street');
    if (city == null) throw new BuiltValueNullFieldError('Address', 'city');
    if (state == null) throw new BuiltValueNullFieldError('Address', 'state');
    if (zip == null) throw new BuiltValueNullFieldError('Address', 'zip');
    if (country == null)
      throw new BuiltValueNullFieldError('Address', 'country');
  }

  @override
  Address rebuild(void updates(AddressBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBuilder toBuilder() => new AddressBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Address) return false;
    return street == other.street &&
        street2 == other.street2 &&
        street3 == other.street3 &&
        city == other.city &&
        state == other.state &&
        zip == other.zip &&
        country == other.country;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, street.hashCode), street2.hashCode),
                        street3.hashCode),
                    city.hashCode),
                state.hashCode),
            zip.hashCode),
        country.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Address')
          ..add('street', street)
          ..add('street2', street2)
          ..add('street3', street3)
          ..add('city', city)
          ..add('state', state)
          ..add('zip', zip)
          ..add('country', country))
        .toString();
  }
}

class AddressBuilder implements Builder<Address, AddressBuilder> {
  _$Address _$v;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  String _street2;
  String get street2 => _$this._street2;
  set street2(String street2) => _$this._street2 = street2;

  String _street3;
  String get street3 => _$this._street3;
  set street3(String street3) => _$this._street3 = street3;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _zip;
  String get zip => _$this._zip;
  set zip(String zip) => _$this._zip = zip;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  AddressBuilder();

  AddressBuilder get _$this {
    if (_$v != null) {
      _street = _$v.street;
      _street2 = _$v.street2;
      _street3 = _$v.street3;
      _city = _$v.city;
      _state = _$v.state;
      _zip = _$v.zip;
      _country = _$v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Address other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Address;
  }

  @override
  void update(void updates(AddressBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Address build() {
    final _$result = _$v ??
        new _$Address._(
            street: street,
            street2: street2,
            street3: street3,
            city: city,
            state: state,
            zip: zip,
            country: country);
    replace(_$result);
    return _$result;
  }
}
