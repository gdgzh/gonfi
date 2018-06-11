import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credentials.g.dart';

abstract class Credentials implements Built<Credentials, CredentialsBuilder> {
  Credentials._();

  String get email;
  String get password;

  factory Credentials([updates(CredentialsBuilder b)]) = _$Credentials;

  static Serializer<Credentials> get serializer => _$credentialsSerializer;
}
