import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address.g.dart';

abstract class Address implements Built<Address, AddressBuilder> {
  Address._();
  String get street;
  @nullable
  String get street2;
  @nullable
  String get street3;

  String get city;
  String get state;
  String get zip;
  String get country;

  factory Address([updates(AddressBuilder b)]) = _$Address;

  static Serializer<Address> get serializer => _$addressSerializer;
}
