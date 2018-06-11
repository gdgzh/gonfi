import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/models.dart';

part 'room.g.dart';

abstract class Room implements Built<Room, RoomBuilder> {
  Room._();
  String get number;
  @nullable
  int get floor;
  @nullable
  Address get address;

  factory Room([updates(RoomBuilder b)]) = _$Room;

  static Serializer<Room> get serializer => _$roomSerializer;
}

enum SessionLevel { Beginner, Intermediate, Pro }
