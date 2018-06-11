import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:gonfi_domain/domain.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Address,
  Company,
  Room,
  Skill,
  SessionLevel,
  Speaker,
  Session,
  Credentials,
  UserInfo,
  User,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();
