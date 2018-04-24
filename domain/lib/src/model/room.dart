import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/models.dart';

part 'room.g.dart';

abstract class Room implements Built<Room, RoomBuilder> {
  Room._();
  @nullable
  int get floor;

  @nullable
  Address get address;

  String get number;

  factory Room([updates(RoomBuilder builder)]) = _$Room;

  static Serializer<Room> get serializer => _$roomSerializer;
}
