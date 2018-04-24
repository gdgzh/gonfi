// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

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

Serializer<Room> _$roomSerializer = new _$RoomSerializer();

class _$RoomSerializer implements StructuredSerializer<Room> {
  @override
  final Iterable<Type> types = const [Room, _$Room];
  @override
  final String wireName = 'Room';

  @override
  Iterable serialize(Serializers serializers, Room object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'number',
      serializers.serialize(object.number,
          specifiedType: const FullType(String)),
    ];
    if (object.floor != null) {
      result
        ..add('floor')
        ..add(serializers.serialize(object.floor,
            specifiedType: const FullType(int)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(Address)));
    }

    return result;
  }

  @override
  Room deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new RoomBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'floor':
          result.floor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Room extends Room {
  @override
  final int floor;
  @override
  final Address address;
  @override
  final String number;

  factory _$Room([void updates(RoomBuilder b)]) =>
      (new RoomBuilder()..update(updates)).build();

  _$Room._({this.floor, this.address, this.number}) : super._() {
    if (number == null) throw new BuiltValueNullFieldError('Room', 'number');
  }

  @override
  Room rebuild(void updates(RoomBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RoomBuilder toBuilder() => new RoomBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Room) return false;
    return floor == other.floor &&
        address == other.address &&
        number == other.number;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, floor.hashCode), address.hashCode), number.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Room')
          ..add('floor', floor)
          ..add('address', address)
          ..add('number', number))
        .toString();
  }
}

class RoomBuilder implements Builder<Room, RoomBuilder> {
  _$Room _$v;

  int _floor;
  int get floor => _$this._floor;
  set floor(int floor) => _$this._floor = floor;

  AddressBuilder _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder address) => _$this._address = address;

  String _number;
  String get number => _$this._number;
  set number(String number) => _$this._number = number;

  RoomBuilder();

  RoomBuilder get _$this {
    if (_$v != null) {
      _floor = _$v.floor;
      _address = _$v.address?.toBuilder();
      _number = _$v.number;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Room other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Room;
  }

  @override
  void update(void updates(RoomBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Room build() {
    _$Room _$result;
    try {
      _$result = _$v ??
          new _$Room._(
              floor: floor, address: _address?.build(), number: number);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Room', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
