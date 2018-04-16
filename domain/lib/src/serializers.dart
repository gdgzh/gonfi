import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:gonfi_domain/models.dart';
import 'package:built_value/standard_json_plugin.dart';
part 'serializers.g.dart';

@SerializersFor(const [
  Address,
  Company,
  Session,
  Skill,
  Speaker,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();
